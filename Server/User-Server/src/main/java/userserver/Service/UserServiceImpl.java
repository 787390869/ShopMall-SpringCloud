package userserver.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import userserver.Bean.User;
import userserver.Bean.UserRole;
import userserver.Dao.UserDao;
import userserver.Dao.UserRoleRepository;
import userserver.Service.Interface.UserService;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/9 15:24
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

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
        return userDao.findByUsername(username);
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
        userDao.save(user);
        int id = Integer.parseInt(findByUsername(user.getUsername()).getUserid());
        UserRole userRole = new UserRole();
        userRole.setUserId(id);
        userRole.setRoleId(2);
        userRoleRepository.save(userRole);
    }

}
