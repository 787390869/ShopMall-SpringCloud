package userserver.Controll;

import BaseWeb.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.util.Base64Utils;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;
import userserver.Bean.OAuthClientDetails;
import userserver.Dao.OAuthClientDetailsRepository;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.URI;
import java.security.Principal;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * @author 张自强
 */
@RestController
@RequestMapping("/token")
public class TokenController extends BaseController {

    @Autowired
    private LoadBalancerClient loadBalancerClient;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    private OAuthClientDetailsRepository oAuthClientDetailsRepository;

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
      * 申请token
      *@Author ZhangZiQiang
      *@Param [code, clientId, secret]
      *@Return java.util.Map
      *@Date 2019/9/2 13:01
      */
    @GetMapping("getAccessToken/{code}/{client_id}/{secret}")
    public Map getAccessToken(@PathVariable("code")String code, @PathVariable("client_id")String clientId,
                              @PathVariable("secret")String secret, HttpServletRequest req){
        // 从Eureka获取认证服务器的Uri: http://127.0.0.1:8020
        ServiceInstance serviceInstance  = loadBalancerClient.choose("User-Server");
        URI uri = serviceInstance.getUri();
        String authUrl = uri + "/oauth/token";

        // 配置请求头,HttpBasic请求方式,将认证服务器的客户端用户密码Base64加密
        LinkedMultiValueMap<String,String> header = new LinkedMultiValueMap<>();
        header.add("Authorization",getHttpBasic(clientId,secret));

        // 配置请求体
        LinkedMultiValueMap<String,String> body = new LinkedMultiValueMap<>();
        body.add("grant_type","authorization_code");
        body.add("code",code);

        // 设置远程调用的容错处理
        HttpEntity<MultiValueMap<String,String>> httpEntity  = new HttpEntity<>(body,header);
        restTemplate.setErrorHandler(new DefaultResponseErrorHandler(){
            @Override
            protected void handleError(ClientHttpResponse response, HttpStatus statusCode) throws IOException {
                if(response.getRawStatusCode()!=400 && response.getRawStatusCode()!=401){
                    super.handleError(response);
                }
            }
        });

        // 远程调用,获取token信息
        ResponseEntity<Map> exchange = restTemplate.exchange(authUrl, HttpMethod.POST,httpEntity,Map.class);
        Map bodyMap = exchange.getBody();

        String refresh_token = (String) bodyMap.get("refresh_token");
        String access_token = (String) bodyMap.get("access_token");
        OAuthClientDetails oAuthClientDetails = oAuthClientDetailsRepository.findAllByClientId(clientId);
        if(!StringUtils.isEmpty(refresh_token)) {
            String redirectUri = oAuthClientDetails.getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "");
            Cookie[] cookies = req.getCookies();
            for(Cookie cookie: cookies) {
                if(cookie.getName().equals("nickname")) {
                    redirectUri += ":" + cookie.getValue();
                }
            }
            redisTemplate.opsForValue().set(redirectUri + ":refresh", refresh_token, oAuthClientDetails.getRefreshTokenValidity(), TimeUnit.SECONDS);
            redisTemplate.opsForValue().set(redirectUri + ":access", access_token, oAuthClientDetails.getAccessTokenValidity(), TimeUnit.SECONDS);
        }
        bodyMap.put("accessTokenTimer", oAuthClientDetails.getAccessTokenValidity());
        bodyMap.put("refreshTokenTimer", oAuthClientDetails.getRefreshTokenValidity());
        return bodyMap;
    }

    /**
      * 刷新token
      *@Author ZhangZiQiang
      *@Param [refreshToken, clientId, clientSecret]
      *@Return java.util.Map
      *@Date 2019/9/2 13:02
      */
    @GetMapping("getRefreshToken/{refreshToken}/{clientId}/{secret}/{nickname}")
    public Map getRefreshToken(@PathVariable("refreshToken")String refreshToken, @PathVariable("clientId")String clientId,
                               @PathVariable("secret")String clientSecret, @PathVariable("nickname")String nickname) {
        ServiceInstance serviceInstance = loadBalancerClient.choose("User-Server");
        URI uri = serviceInstance.getUri();
        String refreshUrl = uri + "/oauth/token";
        String domain = oAuthClientDetailsRepository.findAllByClientId(clientId).getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "");
        String redisKey = domain + ":" + nickname;
        String refresh= (String) redisTemplate.opsForValue().get(redisKey + ":refresh");

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
        return bodyMap;
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
