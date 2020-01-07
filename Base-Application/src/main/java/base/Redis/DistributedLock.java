package base.Redis;

import lombok.extern.slf4j.Slf4j;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.Transaction;
import redis.clients.jedis.exceptions.JedisException;
import java.util.List;
import java.util.UUID;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 09:44
 **/
@Slf4j
public class DistributedLock {

    /** 功能描述: 加锁
      * @Param: [name: 锁名, acquireTimeout 获取超时时间 /s, timeout: 锁的超时时间 /s]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/6 9:46
      */
    public String lock(String name, long acquireTimeout, long timeout) {
        Jedis connection = new Jedis();
        String retIdentifier = null;
        try {
            String identifier = UUID.randomUUID().toString();
            String lockKey = "lock:" + name;
            int lockExpire = (int) timeout;

            long end = System.currentTimeMillis() + (acquireTimeout * 1000);
            while (System.currentTimeMillis() < end) {
                if (connection.setnx(lockKey, identifier) == 1) {
                    log.info("======" + lockKey + " lock success=====");
                    connection.expire(lockKey, lockExpire);
                    retIdentifier = identifier;
                    return retIdentifier;
                }
            }

            /** 没有设置超时时间, 为key设置一个 */
            if (connection.ttl(lockKey) == -1) {
                connection.expire(lockKey, lockExpire);
            }

            try {
                /** 防止线程饥饿 */
                Thread.sleep(10);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        } catch (JedisException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return retIdentifier;
    }

    /** 功能描述: 解锁
      * @Param: [name: 锁名, identifier: 锁值]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/6 10:23
      */
    public boolean unlock(String name, String identifier) {
        Jedis connection = new Jedis();
        String lockKey = "lock:" + name;
        boolean retFlag = false;
        try {
            while (true) {
                connection.watch(lockKey);
                String lockValue = connection.get(lockKey) == null ? "" : connection.get(lockKey);
                if (lockValue.equals(identifier)) {
                    Transaction transaction = connection.multi();
                    transaction.del(lockKey);
                    List results = transaction.exec();
                    if (results == null) {
                        continue;
                    }
                    log.info("=====" + lockKey + " unlock success=====");
                    retFlag = true;
                }
                connection.unwatch();
                break;
            }
        } catch (JedisException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return retFlag;
    }

}

