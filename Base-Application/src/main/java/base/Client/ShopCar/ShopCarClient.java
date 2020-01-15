package base.Client.ShopCar;

import base.BaseWeb.ResultData;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-13 17:09
 **/
@Component
@FeignClient(value = "ShopCar-Server")
public interface ShopCarClient {

    @GetMapping("order/getOne")
    ResultData<Long> getOne(@RequestParam("code") String code);

}
