package goodserver.Controll;

import com.alibaba.fastjson.JSONArray;
import goodserver.Bean.Goods;
import goodserver.Service.Interface.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/24 17:15
 **/
@RestController
@RequestMapping("SomeGoods")
public class SomeGoodsController {

    @Autowired
    private GoodsService goodsService;

    @PostMapping("getOneGoods/{id}/{goodname}")
    public Goods getOneGoods(@PathVariable("id")int id, @PathVariable("goodname")String goodname) {
        return goodsService.findByIdAndGoodsname(id, goodname);
    }
}
