package userclient.Controll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import userclient.Client.UserClient;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:07
 **/
@RestController
public class UserController {

    @Autowired
    private UserClient userClient;

    /**
      * 主动注销
      *@Author ZhangZiQiang
      *@Param [access_token]
      *@Return java.lang.String
      *@Date 2019/9/2 11:41
      */
    @DeleteMapping("logout/{access_token}/{refresh_token}")
    public String logout(@PathVariable("access_token")String access_token,@PathVariable("refresh_token")String refresh_token,
                         HttpServletRequest req, HttpServletResponse resp) {
        String fallback = userClient.revokeToken(access_token,refresh_token);
        if(fallback.equals("注销成功!")) {
            Cookie[] cookies = req.getCookies();
            for(Cookie cookie: cookies) {
                    cookie.setPath("/");
                    cookie.setMaxAge(0);
                    resp.addCookie(cookie);
            }
        }
        return fallback;
    }

    /**
      * refresh_token失效, 被动注销
      *@Author ZhangZiQiang
      *@Param [req, resp]
      *@Date 2019/9/23 13:48
      */
    @DeleteMapping("logout2")
    public String logout2(HttpServletRequest req, HttpServletResponse resp) {
        Cookie[] cookies = req.getCookies();
        if(cookies != null) {
            for (Cookie cookie : cookies) {
                cookie.setPath("/");
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
        }
        return "已注销!";
    }



}
