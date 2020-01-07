package fileServer.Scheduler;

import org.quartz.JobDetail;
import org.quartz.Trigger;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.CronTriggerFactoryBean;
import org.springframework.scheduling.quartz.MethodInvokingJobDetailFactoryBean;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.stereotype.Component;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-09 11:56
 **/
@Configuration
public class SchedulerConfig {

    @Value("${quartz.scheduler.deleteFile.expression}")
    private String CronExpression;

    @Bean(name = "jobDetail")
    public MethodInvokingJobDetailFactoryBean detailFactoryBean(@Qualifier(value = "timerTask") TimerTask task) {
        MethodInvokingJobDetailFactoryBean jobDetail = new MethodInvokingJobDetailFactoryBean();
        jobDetail.setConcurrent(true);
        jobDetail.setName("base.Redis Task");
        jobDetail.setGroup("Redis_Group");
        jobDetail.setTargetObject(task);
        jobDetail.setTargetMethod("runSchedule");
        return jobDetail;
    }

    @Bean(name = "jobTrigger")
    public CronTriggerFactoryBean trigger(@Qualifier(value = "jobDetail") JobDetail jobDetail) {
        CronTriggerFactoryBean trigger = new CronTriggerFactoryBean();
        trigger.setJobDetail(jobDetail);
        /** 每天早上9点,下午6点触发 */
        trigger.setCronExpression(CronExpression);
        trigger.setName("base.Redis Trigger");
        return trigger;
    }

    @Bean(name = "scheduler")
    public SchedulerFactoryBean scheduler(@Qualifier(value = "jobTrigger") Trigger jobTrigger) {
        SchedulerFactoryBean scheduler = new SchedulerFactoryBean();
        scheduler.setOverwriteExistingJobs(true);
        /** 应用启动5秒后, 定时器才启动 */
        scheduler.setStartupDelay(5);
        scheduler.setTriggers(jobTrigger);
        scheduler.setSchedulerName("delete file");
        scheduler.setBeanName("scheduler");
        return scheduler;
    }

}

