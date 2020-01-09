package userserver.Security;

import base.BaseWeb.BaseService;
import com.alibaba.fastjson.JSON;
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
import userserver.Dao.UserRepository;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author 张自强
 */
public class UserDetailsImpl extends BaseService implements UserDetailsService{

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository userRepository;

    /**
      * 加载用户
      *@Author ZhangZiQiang
      *@Param [username]
      *@Date 2019/9/23 14:56
      */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findByUsername(username);

        /** 判断用户是否存在 */
        if(user == null){
            throw new BadCredentialsException("用户名或密码错误,请重新输入!");
        } else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }


        /** 加载用户角色, 权限 */
        Collection<GrantedAuthority> auths = new ArrayList<>();
        Set<String> roles = user.getRoles().stream().map(role -> role.getEnname()).collect(Collectors.toSet());
        Set<String> permissions = new HashSet<>();
        user.getRoles().stream().forEach(role -> {
            role.getPermissions().stream().forEach(permission -> {
                permissions.add(permission.getEnname());
            });
        });
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

        log.info("用户[{}]已登录", user.getUsername());
        log.info("已加载角色: " + JSON.toJSONString(roles));
        log.info("已加载权限: " + JSON.toJSONString(permissions));

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
