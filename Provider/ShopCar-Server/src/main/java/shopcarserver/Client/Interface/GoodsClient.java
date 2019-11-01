package shopcarserver.Client.Interface;

import Beans.Goods;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import shopcarserver.Client.Hystrix.GoodsHystrix;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/24 16:34
 **/
@FeignClient(value = "Goods-Server", fallback = GoodsHystrix.class)
@Component
public interface GoodsClient {

    @PostMapping("SomeGoods/getOneGoods/{id}/{goodname}")
    Goods getOneGoods(@PathVariable("id")int id, @PathVariable("goodname")String goodname);

}
