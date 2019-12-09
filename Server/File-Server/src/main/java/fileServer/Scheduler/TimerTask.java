package fileServer.Scheduler;

import BaseWeb.BaseService;
import fileServer.Service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-09 12:37
 **/
@Configuration
@Component
@EnableScheduling
public class TimerTask extends BaseService {

    public static Set<String> redisKeys = new HashSet<>();

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private MainService mainService;

    public void runSchedule() {
        if (redisKeys.size() == 0) {
            log.info("Quartz Scheduler Is Waiting For Task [Date: {}]", sdf.format(new Date()));
        } else {
            Set<String> removedRedisKeys = new HashSet<>();
            redisKeys.stream().forEach(redisKey -> {
                Set<String> fileSet = stringRedisTemplate.opsForSet().members(redisKey);
                fileSet.stream().forEach(file -> {
                    mainService.deleteOneFile(file);
                    log.info("Quartz Scheduler Is sparked and removed file: {}", file);
                });
                removedRedisKeys.add(redisKey);
                stringRedisTemplate.delete(redisKey);
            });
            if (removedRedisKeys.size() > 0) {
                removedRedisKeys.stream().forEach(key -> {
                    redisKeys.remove(key);
                });
            }
        }
    }

}

