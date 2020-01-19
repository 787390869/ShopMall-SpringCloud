package base.Client.ShopCar;

import base.BaseWeb.ResultData;
import base.Beans.ShopCar;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-13 17:09
 **/
@Component
@FeignClient(value = "ShopCar-Server")
public interface ShopCarClient {

    @GetMapping("order/getOne")
    ResultData<Long> getOne(@RequestParam("code") String code);

    @GetMapping("ShopCenter/checkedShopCarInfo")
    ResultData<List<ShopCar>> checkedShopCar(@RequestParam("array") String array, @RequestParam("nickname") String nickname);

}
