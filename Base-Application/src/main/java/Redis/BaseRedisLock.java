package Redis;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import java.util.Collections;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-01 16:41
 **/
public class BaseRedisLock {

    private static final String LOCK_SUCCESS = "OK";
    private static final String SET_IF_NOT_EXIST = "NX";
    private static final String SET_WITH_EXPIRE_TIME = "PX";

    private static final Long RELEASE_SUCCESS = 1L;

    private static final Logger logger = LoggerFactory.getLogger(BaseRedisLock.class);

    // 加锁
    public static boolean Lock(String lockKey, String requestId, int expireTime) {
        Jedis jedis = new Jedis();
        String result = jedis.set(lockKey, requestId, SET_IF_NOT_EXIST, SET_WITH_EXPIRE_TIME, expireTime * 1000);
        if(LOCK_SUCCESS.equals(result)) {
            logger.info("Key: " + lockKey + "requestId: " + requestId + " has been Locked!");
            return true;
        }
        logger.warn("Key: " + lockKey + "requestId: " + requestId + " failed to Lock!");
        return false;
    }

    // 解锁
    public static boolean unLock(String lockKey, String requestId) {
        Jedis jedis = new Jedis();
        String script = "if redis.call('get', KEYS[1]) == ARGV[1] then return redis.call('del', KEYS[1]) else return 0 end";
        Object result = jedis.eval(script, Collections.singletonList(lockKey), Collections.singletonList(requestId));

        if(RELEASE_SUCCESS.equals(result)) {
            logger.info("Key: " + lockKey + "requestId: " + requestId + " has been unLocked!");
            return true;
        }
        logger.warn("key: " + lockKey + "requestId: " + requestId + "failed to unLock!");
        return false;
    }

}

