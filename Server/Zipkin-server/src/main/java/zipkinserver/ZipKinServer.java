package zipkinserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import zipkin.server.internal.EnableZipkinServer;

@EnableZipkinServer
@EnableDiscoveryClient
@SpringBootApplication
public class ZipKinServer {

    public static void main(String[] args) {
        SpringApplication.run(ZipKinServer.class, args);
    }

}
