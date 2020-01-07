package goodserver;

import com.codingapi.txlcn.tc.config.EnableDistributedTransaction;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@EnableEurekaClient
@EnableFeignClients("base")
@SpringBootApplication
@EnableDistributedTransaction
@ComponentScan({"base", "goodserver"})
public class GoodsServer {

    public static void main(String[] args) {
        SpringApplication.run(GoodsServer.class, args);
    }

}
