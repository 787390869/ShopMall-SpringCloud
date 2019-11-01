package searchserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class SearchServer {

    public static void main(String[] args) {
        SpringApplication.run(SearchServer.class, args);
    }

}
