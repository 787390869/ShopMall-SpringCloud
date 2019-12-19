package qa.MQ;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-04 13:56
 **/
@Component
public class ShopCarReceiver {

    @RabbitListener(queues = "topicQueue1")
    public void received(String msg) {
        System.out.println("我已经接收到了消息: "+  msg +" , 我是: Goods-Server");
    }
}

