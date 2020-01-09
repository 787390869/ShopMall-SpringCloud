package userserver.Service;

import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import userserver.Bean.User;
import userserver.Bean.UserRole;
import userserver.Dao.UserRepository;
import userserver.Dao.UserRoleRepository;
import userserver.Service.Interface.UserService;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/9 15:24
 **/
@Service
public class UserServiceImpl extends BaseService implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserRoleRepository userRoleRepository;

    /***
      * 根据用户名查询用户
      *@Author ZhangZiQiang
      *@Param [username]
      *@Date 2019/9/23 14:57
      */
    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    /**
      * 注册新用户
      *@Author ZhangZiQiang
      *@Param [user]
      *@Date 2019/9/10 21:33
      */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addUser(User user) {
        userRepository.save(user);
        UserRole userRole = new UserRole();
        userRole.setUserId(1L);
        userRole.setRoleId(2L);
        userRoleRepository.save(userRole);
    }

    /** 功能描述: 通过用户昵称查寻用户信息
      * @Param: [nickname]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/3 11:22
      */
    @Override
    public ResultData<User> findUserByUsername(String username) {
        User user = userRepository.findByUsername(username);
        user.setPassword("");
        return new ResultData<>(user);
    }

}
