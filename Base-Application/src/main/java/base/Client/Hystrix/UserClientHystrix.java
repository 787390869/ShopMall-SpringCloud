package base.Client.Hystrix;

import base.BaseWeb.ResultData;
import base.Beans.User;
import base.Client.User.UserClient;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 09:41
 **/
public class UserClientHystrix implements UserClient {

    @Override
    public ResultData<User> userInfo(String username) {
        return new ResultData<>();
    }

}

