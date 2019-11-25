package userserver.Security;

import BaseWeb.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import userserver.Bean.User;
import userserver.Bean.UserWithRole;
import userserver.Dao.UserDao;
import userserver.Dao.UserRoleDao;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author 张自强
 */
public class UserDetailsImpl extends BaseService implements UserDetailsService{

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private UserRoleDao userRoleDao;

    /**
      * 加载用户
      *@Author ZhangZiQiang
      *@Param [username]
      *@Date 2019/9/23 14:56
      */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        UserWithRole user = userRoleDao.findByUsername(username);
        List<String> roles = userRoleDao.findRolesByUsername(username);
        List<String> permissions = userRoleDao.findPermissionsByUsername(username);

        /** 判断用户是否存在 */
        if(user == null){
            throw new BadCredentialsException("用户名或密码错误,请重新输入!");
        } else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }

        /** 加载用户角色, 权限 */
        Collection<GrantedAuthority> auths = new ArrayList<>();
        if(roles != null && !roles.isEmpty()) {
            roles.stream().forEach(role -> {
                auths.add(new SimpleGrantedAuthority("ROLE_" + role));
            });
        }
        if(permissions != null && !permissions.isEmpty()) {
            permissions.stream().forEach(permission -> {
                auths.add(new SimpleGrantedAuthority("Permission_" + permission));
            });
        }
        user.setAuths(auths);

        log.info("当前登录用户: [{}], 已加载角色与权限: {}", user.getUsername(), auths);

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
