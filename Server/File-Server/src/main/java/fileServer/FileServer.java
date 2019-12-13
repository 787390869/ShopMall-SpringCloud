package fileServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-04 11:44
 **/
@EnableDiscoveryClient
@SpringBootApplication/*(exclude = {SecurityAutoConfiguration.class, ManagementWebSecurityAutoConfiguration.class})*/
public class FileServer {
    public static void main(String[] args) {
        SpringApplication.run(FileServer.class, args);
    }
}

