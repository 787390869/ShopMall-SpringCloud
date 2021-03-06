package shopcarserver;

import com.codingapi.txlcn.tc.config.EnableDistributedTransaction;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@EnableDiscoveryClient
@SpringBootApplication
@EnableFeignClients(basePackages = {"base"})
@EnableDistributedTransaction
@ComponentScan({"base", "shopcarserver"})
public class ShopCarServer {

    public static void main(String[] args) {
        SpringApplication.run(ShopCarServer.class, args);
    }

}
