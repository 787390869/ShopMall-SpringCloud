package tcc;

import com.codingapi.txlcn.tm.config.EnableTransactionManagerServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-13 18:12
 **/
@SpringBootApplication
@EnableTransactionManagerServer
public class TccServer {
    public static void main(String[] args) {
        SpringApplication.run(TccServer.class);
    }
}

