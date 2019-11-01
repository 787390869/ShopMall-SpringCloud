package userclient.Client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:04
 **/
@Component
@FeignClient(value = "User-Server")
public interface UserClient {

    /**
      * 主动注销
      *@Author ZhangZiQiang
      *@Param [access_token, refresh_token]
      *@Date 2019/9/23 15:05
      */
    @DeleteMapping("/UserServer/logout")
    String revokeToken(@RequestParam("access_token")String access_token, @RequestParam("refresh_token")String refresh_token);

}
