package fileServer.Scheduler;

import base.BaseWeb.BaseService;
import fileServer.Service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
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

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private MainService mainService;

    @Value("${deleteFileKey}")
    private String deleteFileKey;

    public void runSchedule() {

        if (!stringRedisTemplate.hasKey(deleteFileKey)) {
            log.info("Quartz Scheduler Is Waiting For Task [Date: {}]", sdf.format(new Date()));
        } else {
            Set<String> vrKeys = stringRedisTemplate.opsForSet().members(deleteFileKey);
            vrKeys.stream().forEach(key -> {
                Set<String> removingFies = stringRedisTemplate.opsForSet().members(key);
                removingFies.stream().forEach(file -> {
                    mainService.deleteOneFile(file);
                    log.info("Quartz Scheduler Is sparked and removed file: {}", file);
                });
                stringRedisTemplate.delete(key);
            });
            stringRedisTemplate.delete(deleteFileKey);
            Set<String> removedRedisKeys = new HashSet<>();
            /*redisKeys.stream().forEach(redisKey -> {
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
            }*/
        }
    }

}

