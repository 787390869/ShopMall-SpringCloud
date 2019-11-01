package goodserver.Controll;


import goodserver.Bean.Goods;
import goodserver.Service.Interface.GoodsService;
import goodserver.Utils.RedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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
    GoodsService goodsService;

    /**
      * 查询主页数据
      *@Author ZhangZiQiang
      *@Param [name, number]
      *@Return java.util.List<goodserver.Bean.Goods>
      *@Date 2019/8/28 11:02
      */
    @GetMapping("mainPageData/{name}/{number}")
    public List<Goods> getMainPageData(@PathVariable("name")String name, @PathVariable("number")int number)
    {
        return goodsService.findAll(name,number);
    }

    /**
      * 查询商品列表数据
      *@Author ZhangZiQiang
      *@Param [name, page, size, orderWord, order]
      *@Date 2019/9/23 14:59
      */
    @GetMapping("goodsList/{name}/{page}/{size}/{orderWord}/{order}")
    public List<Goods> getGoodsList(@PathVariable("name")String name, @PathVariable("page")int page,
                                    @PathVariable("size")int size, @PathVariable("orderWord")String orderWord,
                                    @PathVariable("order")String order) {
        return  goodsService.findByName(name, page, size, orderWord, order);
    }

    /**
      * 查询商品的总数
      *@Author ZhangZiQiang
      *@Param [name]
      *@Date 2019/9/23 14:59
      */
    @GetMapping("goodsCount/{name}")
    public int getGoodsCount(@PathVariable("name")String name) {
        return goodsService.getGoodsCount(name);
    }
}
