package BaseWeb;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-19 10:22
 **/
public class BaseController {

    /** 获取用户名 */
    protected String getUserName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            return oAuth2Authentication.getName();
        }
        return "未登录";
    }

    /** 获取用户角色与权限 */
    protected List<String> getUserAuthorization() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        List<String> authorization = new ArrayList<>();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            authorization =oAuth2Authentication.getAuthorities().stream().map(a -> a.getAuthority()
                    .replaceAll("ROLE_", "")).collect(Collectors.toList());
            return authorization;
        }
        authorization.add("用户未授权");
        return authorization;
    }

    /** 获取用户域名 */
    protected String getUserDomain() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            JSONObject authorizationInfo = JSONObject.parseObject(JSONArray.toJSONString(oAuth2Authentication.getDetails()));
            return authorizationInfo.getString("remoteAddress");
        }
        return "用户未授权";
    }
}
