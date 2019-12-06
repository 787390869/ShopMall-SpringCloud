package userserver.Service.Interface;

import BaseWeb.ResultData;
import userserver.Bean.User;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/9 15:25
 **/
public interface UserService {

    /**
      * 根据用户名查找用户
      *@Author ZhangZiQiang
      *@Param [username]
      *@Date 2019/9/23 14:56
      */
    User findByUsername(String username);

    /**
      * 添加新用户
      *@Author ZhangZiQiang
      *@Param [user]
      *@Date 2019/9/23 14:57
      */
    void addUser(User user);

    ResultData<User> findUserByUsername(String username);

}
