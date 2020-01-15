package shopcarserver.Controller;

import base.BaseWeb.BaseController;
import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import shopcarserver.Bean.CancelOrder;
import shopcarserver.Bean.Order;
import shopcarserver.Bean.OrderGoods;
import shopcarserver.Dao.CancelOrderRepository;
import shopcarserver.Dao.OrderRepository;
import shopcarserver.Service.OrderService;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:22
 **/
@RestController
@RequestMapping(value = "order")
public class OrderController extends BaseController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CancelOrderRepository cancelOrderRepository;

    @Autowired
    private GoodsClient goodsClient;

    /** [{'name': '布偶猫', 'id': '2'}, {'name': '内衣', 'id': '15'}] */
    @PostMapping("create")
    public ResultData<JSONObject> createOrder(String goodsInfo, @RequestParam(value = "remark", required = false) String remark) {
        JSONArray jsonArray = JSONArray.parseArray(goodsInfo);
        List<OrderGoods> orderGoods = new ArrayList<>();
        Order order = Order.builder().code(orderService.generateCode()).status(Order.ORDER_UNPAID).remark(remark).createTime(new Date())
                .creator(getUserName()).build();
        Double totalPrice = 0.00;

        try {
            for (int i = 0; i < jsonArray.size(); i++) {
                JSONObject jo = JSON.parseObject(JSON.toJSONString(jsonArray.get(i)));
                int goodsId = jo.getInteger("id");
                String tbName = toPinyin(jo.getString("name"));
                ResultData<String> result = goodsClient.getPrice(tbName, goodsId);
                totalPrice += Double.parseDouble(result.getData());
                OrderGoods og = OrderGoods.builder().goodsId(goodsId)
                        .tbName(tbName).orderId(1L).build();
                orderGoods.add(og);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, "商品信息错误");
        }
        order.setOrderGoods(orderGoods);
        order.setPrepaid(totalPrice.toString());
        return orderService.createOrder(order);
    }

    @PostMapping("modify_status")
    public ResultData<String> modify(String code, int status,
                                     @RequestParam(value = "paid", required = false) String paid,
                                     @RequestParam(value = "platform", required = false) int platform) throws Exception{
        return orderService.modify(code, status, paid, platform);
    }

    @GetMapping("list")
    public ResultData<JSONObject> list(String searchInfo, int pageNum, int pageSize) {
        return orderService.search(searchInfo, pageNum, pageSize);
    }

    @GetMapping("getOne")
    public ResultData<Long> getOne(String code) {
        return orderService.getOne(code);
    }

    @GetMapping("canOperate")
    public ResultData<JSONObject> cans(String code) {
        return orderService.canOperateStatus(code);
    }

    @GetMapping("pay")
    public ResultData<String> pay(String code) {
        return orderService.pay(code);
    }

}

