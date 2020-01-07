package shopcarserver.Controller;

import base.BaseWeb.BaseController;
import base.BaseWeb.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import shopcarserver.Bean.Order;
import shopcarserver.Dao.OrderRepository;
import shopcarserver.Service.OrderService;

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

    @PostMapping("create")
    public ResultData<String> createOrder(String tableName, int goodsId, @RequestParam(value = "remark", required = false) String remark) {
        Order order = Order.builder().code(this.generateCode()).tableName(toPinyin(tableName))
                .goodsId(goodsId).status(Order.ORDER_UNPAID).remark(remark).createTime(new Date())
                .creator(getUserName()).build();
        return orderService.createOrder(order);
    }

    @PostMapping("modify_status")
    public ResultData<String> modify(String code, int status, @RequestParam(value = "paid", required = false) String paid) throws Exception{
        return orderService.modify(code, status, paid);
    }

    protected String generateCode() {
        String id = UUID.randomUUID().toString();
        return id.substring(0,4) + sdf.format(new Date()) + id.substring((id.length()-4));
    }

}

