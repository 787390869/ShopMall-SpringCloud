package shopcarserver.Controller;

import base.BaseWeb.BaseController;
import base.Client.QA.FinancialClient;
import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import shopcarserver.Bean.Order;
import shopcarserver.Bean.OrderParam;
import shopcarserver.Dao.OrderRepository;
import shopcarserver.Service.CancelOrderService;
import shopcarserver.Service.OrderParamService;
import shopcarserver.Service.OrderService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-14 15:00
 **/
@Controller
@RequestMapping("aliyun")
public class AliPayController extends BaseController {

    @Value("${aliyun.pay.returnUrl}")
    private String returnUrl;
    @Value("${aliyun.pay.publicKey}")
    private String publicKey;
    @Value("${aliyun.pay.privateKey}")
    private String privateKey;
    @Value("${aliyun.pay.serverUrl}")
    private String serverUrl;
    @Value("${aliyun.pay.appId}")
    private String appId;
    @Value("${aliyun.pay.notifyUrl}")
    private String notifyUrl;

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private AlipayClient alipayClient;

    @Autowired
    private StringRedisTemplate srt;

    @Autowired
    private OrderParamService orderParamService;

    @Autowired
    private FinancialClient financialClient;

    @Autowired
    private CancelOrderService cancelOrderService;

    @RequestMapping(value = "toPay", method = RequestMethod.GET)
    public void pay(HttpServletRequest req, HttpServletResponse resp, String code) throws Exception {
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        OrderParam orderParam = orderParamService.getParam();
        Order order = orderRepository.findByCode(code);
        if (ObjectUtils.isEmpty(order) || srt.opsForValue().get(orderParam.getRedisOrderKeyName() + code) == null) {
            resp.sendRedirect("http://127.0.0.1:4200");
        } else {
            request.setReturnUrl(returnUrl);
            request.setNotifyUrl(notifyUrl);
            StringBuilder sb = new StringBuilder();
            order.getOrderGoods().stream().forEach(og -> {
                sb.append(og.getTbName());
                sb.append(",");
            });
            request.setBizContent("{" +
                    "    \"out_trade_no\":\"" + order.getId() + "\"," +
                    "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
                    "    \"total_amount\":"+ Double.parseDouble(order.getPrepaid()) +"," +
                    "    \"subject\":\""+ sb.toString().substring(0, sb.length() - 1) + "\"," +
                    "    \"body\":\""+ order.getCode() +"\"," +
                    "    \"passback_params\":\"merchantBizType%3d3C%26merchantBizNo%3d2016010101111\"," +
                    "    \"extend_params\":{" +
                    "    \"sys_service_provider_id\":\"2088511833207846\"" +
                    "    }"+
                    "  }");//填充业务参数
            String form = "";
            try {
                form = alipayClient.pageExecute(request).getBody();
            } catch (Exception e) {
                e.printStackTrace();
            }
            resp.setContentType("text/html;charset=UTF-8");
            resp.getWriter().write(form);
            resp.getWriter().flush();
            resp.getWriter().close();
        }
    }

    @RequestMapping(value = "notify", method = RequestMethod.POST)
    public ModelAndView alipayReturnNotify(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        Map<String, String> params = new HashMap<>();
        Map<String, String[]> requestParams = req.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = iter.next();
            String[] values = requestParams.get(name);
            String valuestr = "";
            for (int i = 0; i < values.length; i++) {
                valuestr = (i == values.length - 1) ? valuestr + values[i] : valuestr + values[i] + ",";
            }
            valuestr = new String(valuestr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valuestr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, publicKey, "utf-8", "RSA2");
        ModelAndView mv = new ModelAndView("http://127.0.0.1:4200");
        if (signVerified) {
            String code = new String(req.getParameter("body").getBytes("ISO-8859-1"), "utf-8");
            String paid = new String(req.getParameter("total_amount").getBytes("ISO-8859-1"), "utf-8");
            Order order = orderRepository.findByCode(code);
            order.setPaid(paid);
            if (order.getStatus() == Order.ORDER_UNPAID) {
                /** 改订单已支付, 删redisKey */
                OrderParam orderParam = orderParamService.getParam();
                order.setPlatform(1);
                order.setStatus(Order.ORDER_PAID);
                String redisKey = orderParam.getRedisOrderKeyName() + code;
                srt.delete(redisKey);
            } else if (order.getStatus() == Order.ORDER_OVERTIME) {
                /** 该订单状态已取消, 创建退订单 */
                order.setStatus(Order.ORDER_CANCELED);
                cancelOrderService.aliPayCreate(order);
                log.info("订单支付期间超时, 已转退订单");
            } else {
                order.setStatus(Order.ORDER_EXCEPTION);
            }
            orderRepository.save(order);
        } else {
            log.warn("订单支付失败!");
        }
        return mv;
    }

}

