package shopcarserver.Service;

import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shopcarserver.Bean.OrderGoods;
import shopcarserver.Dao.OrderGoodsRepository;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-15 09:32
 **/
@Service
public class OrderGoodsService {

    @Autowired
    private OrderGoodsRepository orderGoodsRepository;

    @Autowired
    private GoodsClient goodsClient;

    /** 功能描述: 计算订单总价格
      * @Param: [orderId]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/15 9:39
      */
    public Double calculateOrderPrice(Long orderId) {
        List<OrderGoods> orderGoods = orderGoodsRepository.findByOrderId(orderId);
        Double totalPrice = 0.00;
        for (OrderGoods og: orderGoods) {
            ResultData<String> result = goodsClient.getPrice(og.getTbName(), og.getGoodsId());
            totalPrice += Double.parseDouble(result.getData());
        }
        return totalPrice;
    }

}

