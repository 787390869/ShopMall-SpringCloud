package userserver.Controll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.util.Base64Utils;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.URI;
import java.security.Principal;
import java.util.Map;

/**
 * @author 张自强
 */
@RestController
@RequestMapping("/token")
public class TokenController {

    @Autowired
    private LoadBalancerClient loadBalancerClient;

    @Autowired
    RestTemplate restTemplate;

    /**
      * 申请token
      *@Author ZhangZiQiang
      *@Param [code, clientId, secret]
      *@Return java.util.Map
      *@Date 2019/9/2 13:01
      */
    @GetMapping("getAccessToken/{code}/{client_id}/{secret}")
    public Map getAccessToken(@PathVariable("code")String code, @PathVariable("client_id")String clientId,
                              @PathVariable("secret")String secret){
        // 从Eureka获取认证服务器的Uri: http://127.0.0.1:8020
        ServiceInstance serviceInstance  = loadBalancerClient.choose("User-Server");
        URI uri = serviceInstance.getUri();
        String authUrl = uri + "/oauth/token";

        // 配置请求头,HttpBasic请求方式,将认证服务器的客户端用户密码Base64加密
        LinkedMultiValueMap<String,String> header = new LinkedMultiValueMap<>();
        header.add("Authorization",getHttpBasic(clientId,secret));

        // 配置请求体
        LinkedMultiValueMap<String,String> body = new LinkedMultiValueMap<>();
        body.add("grant_type","authorization_code");
        body.add("code",code);

        // 设置远程调用的容错处理
        HttpEntity<MultiValueMap<String,String>> httpEntity  = new HttpEntity<>(body,header);
        restTemplate.setErrorHandler(new DefaultResponseErrorHandler(){
            @Override
            protected void handleError(ClientHttpResponse response, HttpStatus statusCode) throws IOException {
                if(response.getRawStatusCode()!=400 && response.getRawStatusCode()!=401){
                    super.handleError(response);
                }
            }
        });

        // 远程调用,获取token信息
        ResponseEntity<Map> exchange = restTemplate.exchange(authUrl, HttpMethod.POST,httpEntity,Map.class);
        Map bodyMap = exchange.getBody();
        return bodyMap;
    }

    /**
      * 刷新token
      *@Author ZhangZiQiang
      *@Param [refreshToken, clientId, clientSecret]
      *@Return java.util.Map
      *@Date 2019/9/2 13:02
      */
    @GetMapping("getRefreshToken/{refreshToken}/{clientId}/{secret}")
    public Map getRefreshToken(@PathVariable("refreshToken")String refreshToken, @PathVariable("clientId")String clientId, @PathVariable("secret")String clientSecret) {
        ServiceInstance serviceInstance = loadBalancerClient.choose("User-Server");
        URI uri = serviceInstance.getUri();
        String refreshUrl = uri + "/oauth/token";

        LinkedMultiValueMap<String,String> header = new LinkedMultiValueMap<>();
        header.add("Authorization",getHttpBasic(clientId,clientSecret));

        LinkedMultiValueMap<String,String> body = new LinkedMultiValueMap<>();
        body.add("grant_type","refresh_token");
        body.add("refresh_token",refreshToken);

        HttpEntity<MultiValueMap<String,String>> httpEntity  = new HttpEntity<>(body,header);
        restTemplate.setErrorHandler(new DefaultResponseErrorHandler(){
            @Override
            protected void handleError(ClientHttpResponse response, HttpStatus statusCode) throws IOException {
                if(response.getRawStatusCode()!=400 && response.getRawStatusCode()!=401){
                    super.handleError(response);
                }
            }
        });

        ResponseEntity<Map> exchange = restTemplate.exchange(refreshUrl, HttpMethod.POST,httpEntity,Map.class);
        Map bodyMap = exchange.getBody();
        return bodyMap;
    }

    /**
     * 加密HttpBasic
     * @param clientId 客户端ID
     * @param clientSecret 客户端密码
     * @return 加密后的客户端 ClientID:Secret
     */
    private String getHttpBasic(String clientId,String clientSecret) {
        String str = clientId+":"+clientSecret;
        return "Basic " + new String(Base64Utils.encode(str.getBytes()));
    }
}
