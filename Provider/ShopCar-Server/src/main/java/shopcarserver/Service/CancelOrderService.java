package shopcarserver.Service;

import base.BaseWeb.ResultData;
import base.Client.QA.FinancialClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import shopcarserver.Bean.CancelOrder;
import shopcarserver.Bean.Order;
import shopcarserver.Dao.CancelOrderRepository;
import shopcarserver.Dao.Impl.CancelOrderRepositoryImpl;
import shopcarserver.Dao.OrderRepository;

import java.util.Date;
import java.util.Optional;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 13:58
 **/
@Service
public class CancelOrderService {

    @Autowired
    private CancelOrderRepository cancelOrderRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private CancelOrderRepositoryImpl cancelOrderRepositoryImpl;

    @Autowired
    private FinancialClient financialClient;

    /** 功能描述: 新建退订单
      * @Param: [order]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 14:10
      */
    @Transactional(rollbackFor = Exception.class)
    @LcnTransaction(propagation = DTXPropagation.SUPPORTS)
    public ResultData<Integer> create(Order order) {
        CancelOrder co = cancelOrderRepository.findByOrderId(order.getId());
        if (!ObjectUtils.isEmpty(co)) {
            return new ResultData<>(-1);
        }
        CancelOrder cancelOrder = CancelOrder.builder()
                .orderId(order.getId()).status(CancelOrder.CANCEL_ORDER_CREATED)
                .createTime(new Date()).creator(order.getCreator()).build();

        if (Double.parseDouble(order.getPaid()) > CancelOrder.AUDIT_REQUIRED_PRICE) {
            cancelOrder.setStatus(CancelOrder.CANCEL_ORDER_AUDIT);
        } else {
            cancelOrder.setStatus(CancelOrder.CANCEL_ORDER_COMPLETED);
            financialClient.modify(order.getId(), 3, Double.toString(Double.parseDouble(order.getPaid()) * 0.8));
        }
        cancelOrderRepository.save(cancelOrder);
        return new ResultData<>(cancelOrder.getStatus());
    }

    /** 功能描述: 退订单状态变更
      * @Param: [id: 退订单Id, status]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 14:18
      */
    public ResultData<String> modify(Long id, int status) {
        CancelOrder cancelOrder = cancelOrderRepository.findById(id).get();
        cancelOrder.setStatus(status);
        if (cancelOrder.getStatus() == CancelOrder.CANCEL_ORDER_AUDIT && status == CancelOrder.CANCEL_ORDER_COMPLETED) {
            financialClient.modify(cancelOrder.getOrderId(), status,
                    Double.toString(Double.parseDouble(cancelOrder.getOrder().getPaid()) * 0.8));
        }
        return new ResultData<>("更改成功");
    }

    /** 功能描述: 退订单列表查询
      * @Param: [searchInfo, pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/10 10:54
      */
    public ResultData<JSONObject> search(String searchInfo, int pageNum, int pageSize) {
        JSONObject infoObj = JSON.parseObject(searchInfo);
        String code = Optional.ofNullable(infoObj.getString("code")).orElse(null);
        int status = Optional.ofNullable(infoObj.getInteger("status")).orElse(-1);
        Date createTime = Optional.ofNullable(infoObj.getDate("date")).orElse(null);

        JSONObject jsonObject = new JSONObject();
        Pageable pageable = PageRequest.of((pageNum - 1), pageSize);

        Page<CancelOrder> page = cancelOrderRepositoryImpl.search(code, "", "", status, pageable);

        jsonObject.put("cancelOrders", page.getContent());
        jsonObject.put("count", page.getTotalPages());
        return new ResultData<>(jsonObject);
    }


}

