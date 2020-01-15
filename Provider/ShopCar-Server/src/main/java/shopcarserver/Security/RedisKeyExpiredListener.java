package shopcarserver.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.listener.KeyExpirationEventMessageListener;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import shopcarserver.Bean.Order;
import shopcarserver.Service.OrderParamService;
import shopcarserver.Service.OrderService;

import java.nio.charset.StandardCharsets;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-13 14:34
 **/
public class RedisKeyExpiredListener extends KeyExpirationEventMessageListener {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderParamService orderParamService;

    public RedisKeyExpiredListener(RedisMessageListenerContainer listenerContainer) {
        super(listenerContainer);
    }

    @Override
    public void onMessage(Message message, byte[] pattern) {
        String channel = new String(message.getChannel(), StandardCharsets.UTF_8);
        String key = new String(message.getBody(), StandardCharsets.UTF_8);
        String keyParam = orderParamService.getParam().getRedisOrderKeyName();
        if (key.indexOf(keyParam) >= 0) {
            String code = key.replaceAll(keyParam, "");
            try {
                orderService.modify(code, Order.ORDER_OVERTIME, null, 1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

