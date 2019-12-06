package userserver.Controll;

import BaseWeb.BaseController;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.util.Base64Utils;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;
import userserver.Bean.*;
import userserver.Dao.*;
import userserver.Service.Interface.UserService;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * @author 张自强
 */
@RestController
@RequestMapping("/UserServer")
public class UserController extends BaseController {

    @Autowired
    ConsumerTokenServices consumerTokenServices;

    @Autowired
    private UserService userService;

    @Autowired
    private ProvinceRepository provinceRepository;

    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private AreaRepository areaRepository;

    @Autowired
    private CodeRepository codeRepository;

    @Autowired
    private OAuthClientDetailsRepository oAuthClientDetailsRepository;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    private LoadBalancerClient loadBalancerClient;

    private RedisTemplate redisTemplate;
    @Autowired(required = false)
    private void setStringRedisTemplate(RedisTemplate redisTemplate) {
        RedisSerializer stringSerializer = new StringRedisSerializer();
        redisTemplate.setKeySerializer(stringSerializer);
        redisTemplate.setValueSerializer(stringSerializer);
        redisTemplate.setHashKeySerializer(stringSerializer);
        redisTemplate.setHashValueSerializer(stringSerializer);
        this.redisTemplate = redisTemplate;
    }

    /**
     * 注销
     *@Author ZhangZiQiang
     *@Param [access_token, refre_token]
     *@Return java.lang.String
     *@Date 2019/9/2 13:01
     */
    @DeleteMapping("/logout")
    public String revokeToken(@RequestParam("clientId")String clientId, @RequestParam("nickname")String nickname) {
        String domain = oAuthClientDetailsRepository.findAllByClientId(clientId)
                .getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "") + ":" + nickname;
        String accessToken = (String) redisTemplate.opsForValue().get(domain + ":access");
        String refreshToken = (String) redisTemplate.opsForValue().get(domain + ":refresh");
        if(accessToken != null && refreshToken != null) {
            if(consumerTokenServices.revokeToken(accessToken)) {
                consumerTokenServices.revokeToken(refreshToken);
                Set<String> keys = redisTemplate.keys(domain + ":*");
                redisTemplate.delete(keys);
            }
        }
        return "注销成功";
    }

    @PostMapping("checkLoginStatus")
    public Map checkStatus(@RequestParam("info") String info) throws Exception{
        JSONObject tokenObj = JSONObject.parseObject(info);
        String clientId = Optional.ofNullable(tokenObj.getString("client")).orElse("");
        String nickname = Optional.ofNullable(tokenObj.getString("nickname")).orElse("");
        nickname = URLEncoder.encode(nickname, "UTF-8");
        String secret = Optional.ofNullable(tokenObj.getString("secret")).orElse("");
        OAuthClientDetails oAuthClientDetails = oAuthClientDetailsRepository.findAllByClientId(clientId);
        String domain = oAuthClientDetails.getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "");
        String redisKey = domain + ":" + nickname +":";
        Boolean accessExist = redisTemplate.hasKey(redisKey + "access");
        Boolean refreshExist = redisTemplate.hasKey(redisKey + "refresh");
        Map map = new HashMap();
        if(nickname == null || nickname == "") {
            map.put("status", "您尚未登录");
            return map;
        }
        else if(accessExist && refreshExist) {
            map.put("status", "您已登录");
        }
        else if (!accessExist && refreshExist) {
            map = getRefreshToken(clientId, secret, nickname, oAuthClientDetails);
            map.put("status", "已刷新登录状态");
        }
        else if (!accessExist&& !refreshExist) {
            map.put("status", "登录失效");
        }
        else {
            Set<String> keys = redisTemplate.keys(domain + "*");
            redisTemplate.delete(keys);
            System.out.println("失败");
            map.put("status", "您尚未登录");
        }
        return map;
    }

    /** 功能描述: 刷新Token
      * @Param: [clientId, clientSecret, nickname, oAuthClientDetails]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/22 11:39
      */
    public Map getRefreshToken(String clientId, String clientSecret, String nickname, OAuthClientDetails oAuthClientDetails) {
        ServiceInstance serviceInstance = loadBalancerClient.choose("User-Server");
        URI uri = serviceInstance.getUri();
        String refreshUrl = uri + "/oauth/token";
        String domain = oAuthClientDetails.getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "");
        String redisKey = domain + ":" + nickname;
        String refreshToken= (String) redisTemplate.opsForValue().get(redisKey + ":refresh");

        LinkedMultiValueMap<String,String> header = new LinkedMultiValueMap<>();
        header.add("Authorization",getHttpBasic(clientId,clientSecret));

        LinkedMultiValueMap<String,String> body = new LinkedMultiValueMap<>();
        body.add("grant_type","refresh_token");
        body.add("refresh_token",refreshToken);

        HttpEntity<MultiValueMap<String,String>> httpEntity  = new HttpEntity<>(body,header);
        restTemplate.setErrorHandler(new DefaultResponseErrorHandler(){
            @Override
            protected void handleError(ClientHttpResponse response, HttpStatus statusCode) throws IOException {
                if(response.getRawStatusCode()!=400 && response.getRawStatusCode()!=401){
                    super.handleError(response);
                }
            }
        });
        ResponseEntity<Map> exchange = restTemplate.exchange(refreshUrl, HttpMethod.POST,httpEntity,Map.class);
        Map bodyMap = exchange.getBody();

        String newAccess = (String) bodyMap.get("access_token");
        redisTemplate.opsForValue().set(redisKey + ":access", newAccess, oAuthClientDetails.getAccessTokenValidity(), TimeUnit.SECONDS);
        bodyMap.put("accessTokenTimer", oAuthClientDetails.getAccessTokenValidity());
        bodyMap.put("refreshTokenTimer", oAuthClientDetails.getRefreshTokenValidity());
        return bodyMap;
    }

    /**
      * 通过昵称查询用户
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Date 2019/9/10 13:33
      */
    @GetMapping("/user/{username}")
    public String findUserByUsername(@PathVariable("username")String username) {
        User user = userService.findByUsername(username);
        if(user == null) {
            return "不存在";
        } else {
            return "";
        }
    }

    @GetMapping("/userInfo/{username}")
    public ResultData<User> userInfo(@PathVariable("username")String username) {
        return userService.findUserByUsername(username);
    }

    /**
      * 获取省份列表
      *@Author ZhangZiQiang
      *@Param []
      *@Date 2019/9/11 9:55
      */
    @GetMapping("/province")
    public List<Province> findAllProvince() {
        return provinceRepository.findAll();
    }

    /**
      * 根据省份code获取城市列表
      *@Author ZhangZiQiang
      *@Param [provinceCode]
      *@Date 2019/9/11 9:56
      */
    @GetMapping("/city/{provinceCode}")
    public List<City> findCityByProvinceCode(@PathVariable("provinceCode")String provinceCode) {
        return cityRepository.findByProvinceCode(provinceCode);
    }

    /**
      * 根据城市code获取地区列表
      *@Author ZhangZiQiang
      *@Param [cityCode]
      *@Date 2019/9/11 9:56
      */
    @GetMapping("/area/{cityCode}")
    public List<Area> findAreaByCityCode(@PathVariable("cityCode")String cityCode) {
        return areaRepository.findByCityCode(cityCode);
    }

    /**
      * 注册
      *@Author ZhangZiQiang
      *@Param [user]
      *@Date 2019/9/11 9:56
      */
    @PostMapping("/doRegist")
    public String getAddress(@RequestBody User user) {
        userService.addUser(user);
        return "新增成功!";
    }

    /**
      * 获取验证码
      *@Author ZhangZiQiang
      *@Param
      *@Date 2019/9/11 9:56
      */
    @GetMapping("code")
    public Map<String, String> getCode() {
        int i=(int)(Math.random()*100);
        Code code = codeRepository.findById(i);
        Map<String, String> map = new HashMap<>();
        map.put("imageUrl", code.getImageUrl());
        return map;
    }

    /**
      * 检查用户输入的验证码
      *@Author ZhangZiQiang
      *@Param [code]
      *@Date 2019/9/23 14:53
      */
    @PostMapping("checkCode/{code}")
    public String checkCode(@PathVariable("code")String code) {
        Code code1 = codeRepository.findByRight(code.toLowerCase());
        if(code1 != null) {
            return "验证成功!";
        } else {
            return "验证失败!";
        }
    }

    /**
     * 加密HttpBasic
     * @param clientId 客户端ID
     * @param clientSecret 客户端密码
     * @return 加密后的客户端 ClientID:Secret
     */
    private String getHttpBasic(String clientId,String clientSecret) {
        String str = clientId+":"+clientSecret;
        return "Basic " + new String(Base64Utils.encode(str.getBytes()));
    }
}
