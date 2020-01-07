package base.Client.Goods;

import base.BaseWeb.ResultData;
import base.Beans.Goods;
import base.Client.Hystrix.GoodsClientHystrix;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:33
 **/
@FeignClient(value = "Goods-Server", fallback = GoodsClientHystrix.class)
@Component(value = "goodsClient")
public interface GoodsClient {

    /** 物品单价 */
    @GetMapping("conventional/getPrice/{table}/{id}")
    ResultData<String> getPrice(@PathVariable("table")String table, @PathVariable("id") int id);

    /** 单个物品详情 */
    @PostMapping("SomeGoods/getOneGoods/{id}/{goodname}")
    ResultData<Goods> getOneGoods(@PathVariable("id")int id, @PathVariable("goodname")String goodname);

}
