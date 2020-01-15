package shopcarserver.Service;

import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import base.Client.QA.FinancialClient;
import base.Redis.RedisLock;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.domain.AlipayTradePayModel;
import com.alipay.api.request.AlipayTradePayRequest;
import com.alipay.api.response.AlipayTradePayResponse;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.CancelOrder;
import shopcarserver.Bean.Order;
import shopcarserver.Bean.OrderParam;
import shopcarserver.Dao.CancelOrderRepository;
import shopcarserver.Dao.Impl.OrderRepositoryImpl;
import shopcarserver.Dao.OrderGoodsRepository;
import shopcarserver.Dao.OrderRepository;

import javax.xml.transform.Result;
import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:18
 **/
@Service
public class OrderService extends BaseService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderRepositoryImpl orderRepositoryImpl;

    @Autowired
    private GoodsClient goodsClient;

    @Autowired
    private CancelOrderService cancelOrderService;

    @Autowired
    private FinancialClient financialClient;

    @Autowired
    private CancelOrderRepository cancelOrderRepository;

    @Autowired
    private StringRedisTemplate srt;

    @Autowired
    private OrderParamService orderParamService;

    @Autowired
    private AlipayClient alipayClient;

    @Value("${aliyun.pay.payCode}")
    protected String payCode;

    @Autowired
    private OrderGoodsService orderGoodsService;

    @Autowired
    private OrderGoodsRepository orderGoodsRepository;

    /** 功能描述: 生成订单
      * @Param: [order]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 12:23
      */
    @Transactional(rollbackFor = Exception.class)
    @RedisLock(key = "code", type = "class", acquireTimeout = 5, timeout = 5)
    public ResultData<JSONObject> createOrder(Order order) {
        Order orderSaved = orderRepository.save(order);
        orderSaved.getOrderGoods().stream().forEach(og -> {
            og.setOrderId(orderSaved.getId());
            orderGoodsRepository.save(og);
        });

        OrderParam orderParam = orderParamService.getParam();
        srt.opsForValue().set(orderParam.getRedisOrderKeyName() + order.getCode(), order.getPrepaid(),
                orderParam.getExpirationTime(), TimeUnit.SECONDS);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code", order.getCode());
        jsonObject.put("time", orderParam.getExpirationTime());
        return new ResultData<>(ResultData.RESULT_CODE_SUCCESS, "订单创建成功", jsonObject);
    }

    /** 功能描述: 修改订单状态
      * @Param: [code, status, paid]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 12:23
      */
    @Transactional(rollbackFor = Exception.class)
    @RedisLock(key = "code", type = "basic", acquireTimeout = 5, timeout = 5)
    @LcnTransaction(propagation = DTXPropagation.REQUIRED)
    public ResultData<String> modify(String code, int status, String paid, int platform) throws Exception{
        Order order = orderRepository.findByCode(code);
        String message = "";
        if (ObjectUtils.isEmpty(order)) {
            throw new Exception("没查询到相关订单");
        }
        String key = orderParamService.getParam().getRedisOrderKeyName() + order.getCode();
        String redisValue = srt.opsForValue().get(key);
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
                if (order.getStatus() == Order.ORDER_UNPAID && !StringUtils.isEmpty(paid)
                        && !StringUtils.isEmpty(platform) && redisValue != null) {
                    srt.delete(key);
                    order.setPaid(paid);
                    message = "支付成功";
                    order.setPlatform(platform);
                    financialClient.create(order.getId(), order.getPaid(), order.getCreator());
                } else if(order.getStatus() != Order.ORDER_UNPAID){
                    status = Order.ORDER_EXCEPTION;
                    message = "支付异常, 订单不是待支付状态";
                } else if(order.getStatus() == Order.ORDER_OVERTIME && redisValue == null){
                    message = "订单已过支付时间";
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
                } else {
                    message = "已取消";
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

    /** 功能描述: 判断当前订单能做什么操作
      * @Param: [code]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/13 14:03
      */
    public ResultData<JSONObject> canOperateStatus(String code) {
        String key = orderParamService.getParam().getRedisOrderKeyName() + code;
        List<Integer> cans = new ArrayList<>();
        JSONObject jsonObject = new JSONObject();
        Order order = orderRepository.findByCode(code);
        if (ObjectUtils.isEmpty(order)) {
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, "未查询到相关订单");
        }
        CancelOrder cancelOrder = cancelOrderRepository.findByOrderId(order.getId());
        String financial = financialClient.getOne(order.getId()).getData();
        int status = order.getStatus();
        switch (status) {
            case Order.ORDER_UNPAID:
                if (srt.opsForValue().get(key) != null && cancelOrder == null && financial == null) {
                    cans.add(Order.ORDER_PAID);
                    cans.add(Order.ORDER_CANCELED);
                }else {
                    cans.add(Order.ORDER_EXCEPTION);
                }
                break;
            case Order.ORDER_PAID:
                if (srt.opsForValue().get(key) == null && cancelOrder == null && !StringUtils.isEmpty(financial)) {
                    cans.add(Order.ORDER_CANCELED);
                } else {
                    cans.add(Order.ORDER_EXCEPTION);
                }
                break;
            case Order.ORDER_OVERTIME:
                if (srt.opsForValue().get(key) == null && cancelOrder == null && StringUtils.isEmpty(financial)) {
                    cans.add(Order.ORDER_EXCEPTION);
                }
                break;
        }
        jsonObject.put("order", order);
        jsonObject.put("cans", cans);
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 订单查询
      * @Param: [searchInfo, pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/10 10:16
      */
    public ResultData<JSONObject> search(String searchInfo, int pageNum, int pageSize) {
        JSONObject infoObj = JSON.parseObject(searchInfo);
        String code = Optional.ofNullable(infoObj.getString("code")).orElse(null);
        int status = Optional.ofNullable(infoObj.getInteger("status")).orElse(-1);
        String tbName = Optional.ofNullable(infoObj.getString("tb")).orElse(null);
        JSONArray createTimeArray = Optional.ofNullable(infoObj.getJSONArray("date")).orElse(null);
        String dateFrom = null;
        String dateTo = null;
        if (!StringUtils.isEmpty(tbName)) {
            tbName = toPinyin(tbName);
        }
        if (createTimeArray != null) {
            dateFrom = createTimeArray.get(0).toString();
            dateTo = createTimeArray.get(1).toString();
        }

        JSONObject jsonObject = new JSONObject();
        Pageable pageable = PageRequest.of((pageNum - 1), pageSize);

        Page<Order> page = orderRepositoryImpl.selectOrder(code, status, dateFrom,  dateTo, pageable);
        jsonObject.put("orders", page.getContent());
        jsonObject.put("count", page.getTotalElements());
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 根据Code查询Id
      * @Param: [code]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/13 17:09
      */
    public ResultData<Long> getOne(String code) {
        Order order = orderRepository.findByCode(code);
        if (!ObjectUtils.isEmpty(order)) {
            return new ResultData<>(order.getId());
        }
        return new ResultData<>(ResultData.RESULT_CODE_FAIL, "未查询到相关订单");
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

    /** 功能描述: 生成订单编号
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2020/1/14 14:11
      */
    public String generateCode() {
        String id = UUID.randomUUID().toString();
        return id.substring(0,4) + encodeMd5(sdf.format(new Date())) + id.substring((id.length()-4));
    }

    /** 功能描述: 支付宝支付
      * @Param: [code]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/14 14:20
      */
    public ResultData<String> pay(String code) {
        AlipayTradePayRequest request = new AlipayTradePayRequest();
        AlipayTradePayModel model = new AlipayTradePayModel();
        request.setBizModel(model);
        Order order = orderRepository.findByCode(code);
        if (ObjectUtils.isEmpty(order)) {
            return new ResultData<>("不存在这样的订单");
        }
        if (order.getStatus() != Order.ORDER_UNPAID) {
            return new ResultData<>("当前订单状态不允许支付");
        } else {
            model.setOutTradeNo(code);
            model.setSubject(order.getRemark());
            model.setTotalAmount(order.getPrepaid());
            model.setAuthCode(payCode);
            model.setScene("bar_code");
            order.setPlatform(1);
            AlipayTradePayResponse resp;
            try {
                resp = alipayClient.execute(request);
                System.out.println(resp.getBody());
            } catch (Exception e) {
                order.setStatus(Order.ORDER_EXCEPTION);
                orderRepository.save(order);
                return new ResultData<>("支付异常");
            }
            order.setPaid(order.getPrepaid());
            order.setStatus(Order.ORDER_PAID);
            orderRepository.save(order);
            return new ResultData<>("支付成功");
        }
    }

}

