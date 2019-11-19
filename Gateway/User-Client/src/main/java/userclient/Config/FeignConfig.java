package userclient.Config;

import feign.RequestInterceptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Configuration
public class FeignConfig {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    /** 请求拦截器 避免Feign Authorization 请求头丢失*/
    @Bean
    public RequestInterceptor requestInterceptor() {
        return requestTemplate -> {
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            if (attributes != null) {
                HttpServletRequest request = attributes.getRequest();
                if(attributes != null) {
                    Enumeration<String> headerNames = request.getHeaderNames();
                    if (headerNames != null) {
                        while (headerNames.hasMoreElements()) {
                            String name = headerNames.nextElement();
                            String value = request.getHeader(name);
                            if("Authorization".equalsIgnoreCase(name)) {
                                requestTemplate.header(name, value);
                            } else {
                                logger.debug("Feign -> Authorization Header 丢失!");
                            }
                        }
                    }
                }
            }
        };
    }
}
