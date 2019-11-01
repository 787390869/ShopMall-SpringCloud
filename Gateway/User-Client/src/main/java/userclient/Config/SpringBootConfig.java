package userclient.Config;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

/**
 * @author 张自强
 */
@SpringBootConfiguration
public class SpringBootConfig {
    @Bean
    public MainFilter zuulPreFilter(){
        return new MainFilter();
    }
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
