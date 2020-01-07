package base.Redis;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 10:36
 **/
@Aspect
@Component
@Slf4j
public class RedisLockAop {

    ThreadLocal<Long> beginTime = new ThreadLocal<>();
    ThreadLocal<String> objectId = new ThreadLocal<>();
    ThreadLocal<String> lockValue = new ThreadLocal<>();

    @Autowired
    private RedisService redisService;

    @Pointcut("@annotation(redisLock)")
    public void serviceStatistics(RedisLock redisLock){};

    @Before("serviceStatistics(redisLock)")
    public void doBefore(JoinPoint joinPoint, RedisLock redisLock) {
        beginTime.set(System.currentTimeMillis());
        String methodName = joinPoint.getSignature().getName();
        Object[] args = joinPoint.getArgs();
        String key = redisLock.key();
        if (ObjectUtils.isEmpty(args)) {
            key = methodName + UUID.randomUUID().toString();
        }
        else if (redisLock.type().equals("class")) {
            Object arg = args[0];
            log.info("arg: " + arg.toString());
            Map<String, Object> map = getKeyAndValue(arg);
            Object o = map.get(StringUtils.isEmpty(key) ? "id" : key);
            if (ObjectUtils.isEmpty(o)) {
                try {
                    throw new Exception("base.Redis Lock Key Is Null");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            key = o.toString();
        }
        else{
            key = args[0].toString();
        }
        objectId.set(key);
        String lock = redisService.redisLock(objectId.get(), redisLock.acquireTimeout(), redisLock.timeout());
        lockValue.set(lock);
    }

    @After("serviceStatistics(redisLock)")
    public void doAfter(RedisLock redisLock) {
        redisService.redisUnlock(objectId.get(), lockValue.get());
    }

    public static Map<String, Object> getKeyAndValue(Object obj) {
        Map<String, Object> map = new HashMap<>();
        Class userCla = (Class) obj.getClass();
        Field[] fields = userCla.getDeclaredFields();
        for (int i = 0; i < fields.length; i++) {
            Field f = fields[i];
            f.setAccessible(true);
            Object val = new Object();
            try {
                val = f.get(obj);
                map.put(f.getName(), val);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        return map;
    }

}

