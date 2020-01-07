package shopcarserver.Controller;

import base.BaseMQ.MQEnum;
import base.BaseWeb.ResultData;
import base.Beans.Goods;
import base.Client.Goods.GoodsClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import shopcarserver.Bean.ShopCar;
import shopcarserver.Service.ShopCarService;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:33
 **/
@RestController
@RequestMapping("/ShopCenter")
public class ShopCarController {

    @Autowired
    private ShopCarService shopCarService;

    @Autowired
    private GoodsClient goodsClient;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    /**
      * 根据昵称查询购物车数量
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Return int
      *@Date 2019/8/28 16:34
      */
    @PostMapping("count/{nickname}")
    public int getCount(@PathVariable("nickname")String nickname) throws Exception{
        int count = shopCarService.countOfShopcar(URLDecoder.decode(nickname, "UTF-8"));
        return count;
    }

    /**
      * 用户新增购物车
      *@Author ZhangZiQiang
      *@Param [id, goodname, nickname]
      *@Date 2019/9/26 10:34
      */
    @PostMapping("addShopCar/{id}/{goodname}/{nickname}")
    public Map addToShopCar(@PathVariable("id")int id, @PathVariable("goodname")String goodname,
                            @PathVariable("nickname")String nickname) throws Exception{
        nickname = URLDecoder.decode(nickname, "UTF-8");
        ResultData<Goods> data = this.goodsClient.getOneGoods(id, goodname);
        Goods goods = JSON.parseObject(JSON.toJSONString(data.getData()), new TypeReference<Goods>(){});
        ShopCar shopCar = new ShopCar();
        shopCar.setGoodid(goods.getId());
        shopCar.setGoodname(goods.getName());
        shopCar.setImageUrl(goods.getImageUrl());
        shopCar.setNickname(nickname);
        shopCar.setPrice(goods.getPrice());
        shopCar.setTablename(goodname);

        shopCarService.addShopCar(shopCar);
        Map map = new HashMap();
        map.put("message", "新增购物车成功!");
        return map;
    }

    @PreAuthorize("hasAnyAuthority('Permission_Look')")
    @GetMapping("myShopCar/{nickname}")
    public List<ShopCar> getMyShopCars(@PathVariable("nickname")String nickname) throws Exception{
        nickname = URLDecoder.decode(nickname, "UTF-8");
        return  shopCarService.getAllShopCars(nickname);
    }

    /**
      * 删除单个商品
      *@Author ZhangZiQiang
      *@Param [nickname, goodname]
      *@Date 2019/9/26 16:04
      */
    @PostMapping("shopCar/{nickname}/{goodname}")
    public String deleteShopCar(@PathVariable("nickname")String nickname, @PathVariable("goodname")String goodname) throws Exception{
        nickname = URLDecoder.decode(nickname, "UTF-8");
        System.out.println(goodname);
        shopCarService.deleteOneShopCar(nickname, goodname);
        return "已清空该商品!";
    }

    /**
      * 清空购物车
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Date 2019/9/26 17:05
      */
    @DeleteMapping("allShopCar/{nickname}")
    public String deleteAllShopCar(@PathVariable("nickname")String nickname) throws Exception{
        nickname = URLDecoder.decode(nickname, "UTF-8");
        shopCarService.deleteAllShopCar(nickname);
        return "已清空购物车!";
    }

    /**
      * 加减购物车
      *@Author ZhangZiQiang
      *@Param [nickname, goodname, flag]
      *@Date 2019/9/26 17:42
      */
    @PostMapping("shopCarCount/{nickname}/{goodname}/{flag}")
    public String changeCount(@PathVariable("nickname")String nickname, @PathVariable("goodname")String goodname,
                              @PathVariable("flag")int flag) throws Exception{
        nickname = URLDecoder.decode(nickname, "UTF-8");
        return shopCarService.changeShopCarCount(nickname,goodname,flag);
    }

    @GetMapping("sendMessage")
    public void sendMessage() {
        System.out.println("ShopCar-Server 已发送消息!");
        rabbitTemplate.convertAndSend(MQEnum.topicQueue1.getExchangeName(),"add.name", "你是谁?");
    }
}
