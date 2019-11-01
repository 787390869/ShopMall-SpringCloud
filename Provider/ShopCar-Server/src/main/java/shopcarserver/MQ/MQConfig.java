package shopcarserver.MQ;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-10-29 17:53
 **/
@Configuration
public class MQConfig {
    @Bean
    public Queue shitQueue() {
        return new Queue("shit");
    }
}

