package qa.Client;

import BaseWeb.ResultData;
import Beans.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-03 11:24
 **/
@FeignClient(value = "User-Server")
@Component
public interface UserClient {

    @GetMapping("/UserServer/userInfo/{username}")
    ResultData<User> userInfo(@PathVariable("username")String username);

}
