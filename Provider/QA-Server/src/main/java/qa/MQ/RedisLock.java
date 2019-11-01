package qa.MQ;

import Redis.BaseRedisLock;

/**
 * @Author ZhangZiQiang
 * @Date 2019/11/1 21:53
 **/
public class RedisLock extends BaseRedisLock{

    private static final String LOCK_PREFIX = "lock:QA";

    public static String QALock(int id) {
        return String.format("%s:conventional:test:get:%s", LOCK_PREFIX, id);
    }

}
