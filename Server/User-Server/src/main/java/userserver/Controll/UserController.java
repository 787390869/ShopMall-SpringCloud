package userserver.Controll;

import BaseWeb.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.web.bind.annotation.*;
import userserver.Bean.*;
import userserver.Dao.*;
import userserver.Service.Interface.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
    public String revokeToken(@RequestParam("access_token")String access_token, @RequestParam("refresh_token")String refresh_token, @RequestParam("clientId")String clientId) {
        String domain = oAuthClientDetailsRepository.findAllByClientId(clientId).getWebServerRedirectUri().split("=")[1].replaceAll(":(.*)", "");
        if(consumerTokenServices.revokeToken(access_token)) {
            consumerTokenServices.revokeToken(refresh_token);
            Set<String> keys = redisTemplate.keys(domain + ":*");
            redisTemplate.delete(keys);
            return "注销成功!";
        } else {
            return "注销失败!";
        }
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
}
