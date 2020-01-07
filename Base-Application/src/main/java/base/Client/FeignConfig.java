package base.Client;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 10:37
 **/
@Configuration
public class FeignConfig implements RequestInterceptor {

    protected final static String AUTHORIZATION_HEADER = "Authorization";

    protected final static String BEARER_TOKEN_TYPE = "Bearer";

    /** Feign 请求带上Authorization请求头 */
    @Override
    public void apply(RequestTemplate requestTemplate) {
        SecurityContext securityContext = SecurityContextHolder.getContext();
        Authentication authentication = securityContext.getAuthentication();
        if (authentication != null && authentication.getDetails() instanceof OAuth2AuthenticationDetails) {
            OAuth2AuthenticationDetails details = (OAuth2AuthenticationDetails) authentication.getDetails();
            requestTemplate.header(AUTHORIZATION_HEADER, String.format("%s %s", BEARER_TOKEN_TYPE, details.getTokenValue()));
        }
    }

}

