package goodserver.Controll;


import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import goodserver.Service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

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

    @PreAuthorize("hasAnyAuthority('ROLE_Admin') or hasAnyAuthority('ROLE_ShopMallHandler')")
    @GetMapping("updateGoodsPy/{goodname}/{page}")
    public ResultData<String> updateGoodsPy(@PathVariable("goodname")String goodname,
                                            @PathVariable("page")int page) throws Exception{
        return goodsService.updateGoodsPy(goodname, page);
    }
}
