package shopcarserver.Security;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 12:20
 **/
@Configuration
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class ResourceConfig extends ResourceServerConfigurerAdapter {
    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/ShopCenter/**")
                .permitAll();
        /*super.configure(http);*/
    }

    @Autowired
    private RedisConnectionFactory redisConnectionFactory;

    @Bean
    public RedisMessageListenerContainer redisMessageListenerContainer() {
        RedisMessageListenerContainer redisMessageListenerContainer = new RedisMessageListenerContainer();
        redisMessageListenerContainer.setConnectionFactory(redisConnectionFactory);
        return redisMessageListenerContainer;
    }

    @Bean
    public RedisKeyExpiredListener redisKeyExpiredListener() {
        return new RedisKeyExpiredListener(this.redisMessageListenerContainer());
    }

    @Value("${aliyun.pay.publicKey}")
    private String publicKey;
    @Value("${aliyun.pay.privateKey}")
    private String privateKey;
    @Value("${aliyun.pay.serverUrl}")
    private String serverUrl;
    @Value("${aliyun.pay.appId}")
    private String appId;

    @Bean
    public AlipayClient alipayClient() {
        return new DefaultAlipayClient(serverUrl, appId, privateKey, "json", "utf-8", publicKey, "RSA2");
    }
}
