package userserver.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import userserver.Bean.UserWithRole;
import userserver.Dao.UserRoleDao;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * @author 张自强
 */
public class UserDetailsImpl implements UserDetailsService {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private UserRoleDao userRoleDao;

    /**
      * 加载用户权限
      *@Author ZhangZiQiang
      *@Param [username]
      *@Date 2019/9/23 14:56
      */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        UserWithRole user = userRoleDao.getUser(username);
        if(user == null){
            throw new BadCredentialsException("用户名或密码错误,请重新输入!");
        }
        else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            System.out.println("当前登录角色 : "+user.getAuthorities()+" ------->用户名 : "+user.getUsername());
        }

        // 将用户昵称存储在cookie
        HttpServletResponse resp = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
        Cookie cookie = null;
        try {
            cookie = new Cookie("nickname", URLEncoder.encode(user.getNickname(),"UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        cookie.setPath("/");
        cookie.setMaxAge(-1);
        resp.addCookie(cookie);
        return user;
    }

}
