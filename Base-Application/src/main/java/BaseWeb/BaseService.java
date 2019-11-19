package BaseWeb;

import ch.qos.logback.classic.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-19 11:30
 **/
public class BaseService {

    protected final Logger log = (Logger) LoggerFactory.getLogger(this.getClass());
    protected DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /** 获取用户名 */
    protected String getUserName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            return oAuth2Authentication.getName();
        }
        return "未登录";
    }

}

