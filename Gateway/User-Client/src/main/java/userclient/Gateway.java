package userclient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.cloud.openfeign.EnableFeignClients;

//Eureka客户端
//熔断容错
@EnableZuulProxy
@EnableCircuitBreaker
//可视化熔断监控
@EnableHystrixDashboard
@SpringBootApplication
@EnableFeignClients
public class Gateway {

    public static void main(String[] args) {
        SpringApplication.run(Gateway.class, args);
    }

}
