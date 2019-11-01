package userserver.Bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

/**
 * @author 张自强
 */
@Configuration
public class ConfigurationBean {
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
