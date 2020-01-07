package userclient.Controll;

import base.BaseWeb.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 张自强
 */
@Controller
public class Html extends BaseController {

    @Autowired
    RestTemplate restTemplate;

    /**
      * 认证成功,带着code跳转
      *@Author ZhangZiQiang
      *@Param [req, resp]
      *@Date 2019/9/23 13:47
      */
    @RequestMapping("loginSuccess")
    public ModelAndView loginSuccess(HttpServletRequest req, HttpServletResponse resp) {
        // 获取回调后的url参数里的Code值
        String[] args = req.getQueryString().split("&");
        String redirect_url = args[0].split("=")[1];
        String code = args[1].split("=")[1];

        Cookie cookie = new Cookie("code", code);
        cookie.setPath("/");
        cookie.setMaxAge(-1);
        cookie.setDomain(redirect_url.replaceAll(":(.*)", ""));
        resp.addCookie(cookie);

        return new ModelAndView(new RedirectView("http://" + redirect_url));
    }

}
