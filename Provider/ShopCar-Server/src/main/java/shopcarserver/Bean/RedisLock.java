package shopcarserver.Bean;

import Redis.BaseRedisLock;

/**
 * @Author ZhangZiQiang
 * @Date 2019/11/1 21:53
 **/
public class RedisLock extends BaseRedisLock{

    private static final String LOCK_PREFIX = "lock:shopcar";

    public static String shopCarLock(int id) {
        return String.format("%s:conventional:test:get:%s", LOCK_PREFIX, id);
    }

}
