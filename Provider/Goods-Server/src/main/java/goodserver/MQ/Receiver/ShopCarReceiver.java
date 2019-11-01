package goodserver.MQ.Receiver;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-10-25 10:35
 **/
@Component
public class ShopCarReceiver {

    @RabbitListener(queues = "shit")
    public void received(String msg) {
        System.out.println("我已经接收到了消息: "+  msg +" , 我是: Goods-Server");
    }
}

