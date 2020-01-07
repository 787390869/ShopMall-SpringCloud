package base.Redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import java.util.concurrent.TimeUnit;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 09:26
 **/
@Service
public class RedisService {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private RedisTemplate redisTemplate;

    DistributedLock lock = new DistributedLock();

    public String get(String key) {
        return stringRedisTemplate.opsForValue().get(key);
    }

    public void set(String key, String val) {
        stringRedisTemplate.opsForValue().set(key, val, 1800, TimeUnit.SECONDS);
    }

    public void del(String key) {
        stringRedisTemplate.delete(key);
    }

    public Object getObj(Object o) {
        return redisTemplate.opsForValue().get(o);
    }

    public void setObj(Object o1, Object o2) {
        redisTemplate.opsForValue().set(o1, o2);
    }

    public void delObj(Object o) {
        redisTemplate.delete(o);
    }

    public String redisLock(String objectId, Long acquireTimeout, Long timeout) {
        String lockValue = lock.lock(objectId, acquireTimeout, timeout);
        return lockValue;
    }

    public Boolean redisUnlock(String objectId, String lockValue) {
        boolean b = lock.unlock(objectId, lockValue);
        return b;
    }

}

