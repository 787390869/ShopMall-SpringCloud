package qa.Client;

import BaseWeb.ResultData;
import Beans.Goods;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 17:32
 **/
@FeignClient(value = "Goods-Server")
@Component
public interface GoodsClient {

    @PostMapping("SomeGoods/getOneGoods/{id}/{goodname}")
    ResultData<Goods> getOneGoods(@PathVariable("id")int id, @PathVariable("goodname")String goodname);

}
