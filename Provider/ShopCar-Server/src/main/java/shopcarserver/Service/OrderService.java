package shopcarserver.Service;

import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import base.Client.QA.FinancialClient;
import base.Redis.RedisLock;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.CancelOrder;
import shopcarserver.Bean.Order;
import shopcarserver.Dao.OrderRepository;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:18
 **/
@Service
public class OrderService extends BaseService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private GoodsClient goodsClient;

    @Autowired
    private CancelOrderService cancelOrderService;

    @Autowired
    private FinancialClient financialClient;

    /** 功能描述: 生成订单
      * @Param: [order]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 12:23
      */
    @Transactional(rollbackFor = Exception.class)
    @RedisLock(key = "code", type = "class", acquireTimeout = 5, timeout = 5)
    public ResultData<String> createOrder(Order order) {
        ResultData<String> result = goodsClient.getPrice(order.getTableName(), order.getGoodsId());
        String price = result.getData();
        order.setPrepaid(price);
        if (price.equals("-1")) {
            order.setStatus(Order.ORDER_EXCEPTION);
        }
        orderRepository.save(order);
        return new ResultData<>("订单创建成功");
    }

    /** 功能描述: 修改订单状态
      * @Param: [code, status, paid]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 12:23
      */
    @Transactional(rollbackFor = Exception.class)
    @RedisLock(key = "code", type = "basic", acquireTimeout = 5, timeout = 5)
    @LcnTransaction(propagation = DTXPropagation.REQUIRED)
    public ResultData<String> modify(String code, int status, String paid) throws Exception{
        Order order = orderRepository.findByCode(code);
        String message = "";
        if (ObjectUtils.isEmpty(order)) {
            throw new Exception("没查询到相关订单");
        }
        switch (status) {
            case Order.ORDER_UNPAID:
                if (StringUtils.isEmpty(order.getPaid())) {
                    message = "未支付";
                } else {
                    message = "支付异常";
                    status = Order.ORDER_EXCEPTION;
                }
                break;
            case Order.ORDER_PAID:
                if (order.getStatus() == Order.ORDER_UNPAID && !StringUtils.isEmpty(paid)) {
                    order.setPaid(paid);
                    message = "支付成功";
                    financialClient.create(order.getId(), order.getPaid(), order.getCreator());
                } else if(order.getStatus() != Order.ORDER_PAID){
                    status = Order.ORDER_EXCEPTION;
                    message = "支付异常, 订单不是待支付状态";
                } else {
                    message = "支付失败";
                }
                break;
            case Order.ORDER_CANCELED:
                if (order.getStatus() == Order.ORDER_PAID) {
                    int cancelStatus = cancelOrderService.create(order).getData();
                    if (cancelStatus == -1 ) {
                        message = "不能重复取消订单";
                    }
                    else if (cancelStatus == CancelOrder.CANCEL_ORDER_AUDIT) {
                        message = "支付额大于" + order.getPaid() + "已通知财务审核, 系统将在3日之内退还";
                    } else if (cancelStatus == CancelOrder.CANCEL_ORDER_COMPLETED) {
                        message = "已支付" + order.getPaid() + "元, 系统将退还至您的" + getPlatform(Order.ORDER_PLATFORM_DEBUG);
                    }
                } else if(order.getStatus() == Order.ORDER_CANCELED){
                   message =  "不能重复取消订单";
                }
                break;
            case Order.ORDER_OVERTIME: message = "支付超时(5min)"; break;
            case Order.ORDER_EXCEPTION: message = "支付异常"; break;
            default:
                message = "支付异常";
                status = Order.ORDER_EXCEPTION;
                break;
        }
        order.setStatus(status);
        orderRepository.save(order);
        return new ResultData<>(message);
    }

    /** 功能描述: 平台
      * @Param: [number]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 11:17
      */
    private String getPlatform(int number) {
        switch (number) {
            case 1: return "支付宝";
            case 2: return "微信";
            case 3: return "DEBUG";
            default: return "DEBUG";
        }
    }

}
