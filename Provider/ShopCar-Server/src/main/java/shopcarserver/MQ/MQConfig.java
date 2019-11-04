package shopcarserver.MQ;

import BaseMQ.MQEnum;
import org.springframework.amqp.core.*;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-10-29 17:53
 **/
@Configuration
public class MQConfig {

    @Bean
    public Queue fanoutQueue1() {
        return new Queue(MQEnum.fanoutQueue1.getQueueName());
    }

    @Bean
    public Queue fanoutQueue2() {
        return new Queue(MQEnum.fanoutQueue2.getQueueName());
    }

    @Bean
    public Queue topicQueue1() {
        return new Queue(MQEnum.topicQueue1.getQueueName());
    }

    @Bean
    public Queue topicQueue2() {
        return new Queue(MQEnum.topicQueue2.getQueueName());
    }

    @Bean
    public TopicExchange topicExchange() {
        return new TopicExchange(MQEnum.topicQueue1.getExchangeName());
    }

    @Bean
    public FanoutExchange fanoutExchange() {
        return new FanoutExchange(MQEnum.fanoutQueue1.getExchangeName());
    }

    @Bean
    public Binding topicBinding(@Qualifier("topicQueue1") Queue topicQueue , TopicExchange topicExchange){
        return BindingBuilder.bind(topicQueue).to(topicExchange).with(MQEnum.topicQueue1.getRoutingKey());
    }

    @Bean
    public Binding topicBinding1(@Qualifier("topicQueue1") Queue topicQueue , TopicExchange topicExchange){
        return BindingBuilder.bind(topicQueue).to(topicExchange).with(MQEnum.topicQueue2.getRoutingKey());
    }

    @Bean
    public Binding topicBinding2(@Qualifier("topicQueue2") Queue topicQueue , TopicExchange topicExchange){
        return BindingBuilder.bind(topicQueue).to(topicExchange).with(MQEnum.topicQueue2.getRoutingKey());
    }

    @Bean
    public Binding fanoutBinding(@Qualifier("fanoutQueue1") Queue queue1, FanoutExchange fanoutExchange) {
        return BindingBuilder.bind(queue1).to(fanoutExchange);
    }

    @Bean
    public Binding fanoutBinding2(@Qualifier("fanoutQueue2") Queue queue2, FanoutExchange fanoutExchange) {
        return BindingBuilder.bind(queue2).to(fanoutExchange);
    }

}

