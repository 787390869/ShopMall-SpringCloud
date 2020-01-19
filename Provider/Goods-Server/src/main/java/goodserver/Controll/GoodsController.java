package goodserver.Controll;


import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import goodserver.Bean.Goods;
import goodserver.Service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author 张自强
 */
@RestController
@RequestMapping("/conventional")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private GoodsClient goodsClient;

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

    @PreAuthorize("hasAnyAuthority('ROLE_Vip') or hasAnyAuthority('Permission_LookAndBuy')")
    @GetMapping("getPrice/{table}/{id}")
    public ResultData<String> getPrice(@PathVariable("table")String table, @PathVariable("id") int id) {
        return goodsService.getPrice(table, id);
    }

    @GetMapping("allGoods")
    public ResultData<List<String>> allGoods() {
        return goodsService.allGoods();
    }

    @GetMapping("settleInfo")
    public ResultData<JSONObject> settleInfo(String info) {
        JSONArray jsonArray = JSONArray.parseArray(info);
        if (jsonArray.size() > 0) {
            return goodsService.settleInfo(jsonArray);
        } else {
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, "选购商品不能为空");
        }
    }

}
