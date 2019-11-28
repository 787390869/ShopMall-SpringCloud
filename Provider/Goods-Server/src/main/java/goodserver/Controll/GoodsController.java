package goodserver.Controll;


import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import goodserver.Bean.Goods;
import goodserver.Service.GoodsService;
import goodserver.Utils.RedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.UUID;

/**
 * @author 张自强
 */
@RestController
@RequestMapping("/conventional")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @GetMapping("mainPageData")
    public ResultData<JSONObject> findAll(@RequestParam("searchInfo")String searchInfo) {
        return goodsService.findAll(searchInfo);
    }

    @GetMapping("goodsList/{name}/{page}/{size}/{orderWord}/{order}")
    public ResultData<JSONObject> getGoodsList(@PathVariable("name")String name, @PathVariable("page")int page,
                                               @PathVariable("size")int size, @PathVariable("orderWord")String orderWord,
                                               @PathVariable("order")String order) {
        return  goodsService.findList(name, orderWord, order, page, size);
    }

}
