package base.Redis;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
  * @Author: ZhangZiQiang
  * @Date: 2020/1/6 9:23
  */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface RedisLock {

    /** 数据Id */
    String key() default "";

    /** 参数类型 basic-基础类型, class-对象 */
    String type() default "basic";

    /** 唤醒时间 */
    long acquireTimeout() default 6L;

    /** 超时时间 */
    long timeout() default 6L;

}
