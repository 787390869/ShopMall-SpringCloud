package goodserver.Controll;

import BaseWeb.ResultData;
import goodserver.Bean.Goods;
import goodserver.Service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
    public ResultData<Goods> getOneGoods(@PathVariable("id")int id, @PathVariable("goodname")String goodname) {
        return goodsService.findByIdAndGoodsname(id, goodname);
    }

}
