package goodserver.Utils;

import Redis.BaseRedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;

import java.util.Collections;

/**
 * @Author ZhangZiQiang
 * @Date 2019/11/1 21:53
 **/
@Component
public class RedisLock extends BaseRedisLock{

    private static final String LOCK_PREFIX = "lock:goods";

    public static String goodsLock(int id) {
        return String.format("%s:conventional:test:get:%s", LOCK_PREFIX, id);
    }

}
