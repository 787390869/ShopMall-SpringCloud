package base.Client.User;

import base.BaseWeb.ResultData;
import base.Beans.User;
import base.Client.Hystrix.UserClientHystrix;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-03 11:24
 **/
@FeignClient(value = "User-Server", fallback = UserClientHystrix.class)
@Component
public interface UserClient {

    @GetMapping("/UserServer/userInfo/{username}")
    ResultData<User> userInfo(@PathVariable("username") String username);

}
