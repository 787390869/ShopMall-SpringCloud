package shopcarserver.Service;

import base.BaseWeb.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shopcarserver.Bean.OrderParam;
import shopcarserver.Dao.OrderParamRepository;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-14 09:43
 **/
@Service
public class OrderParamService {

    @Autowired
    private OrderParamRepository orderParamRepository;

    /** 功能描述: 查询参数
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2020/1/14 9:44
      */
    public OrderParam getParam() {
        return orderParamRepository.findById(1).get();
    }


    /** 功能描述: 修改参数
      * @Param: [ex, max, redisKey, unSub]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/14 9:47
      */
    @Transactional(rollbackFor = Exception.class)
    public ResultData<String> modify(int ex, String max, String redisKey, String unSub) {
        OrderParam orderParam = getParam();
        orderParam.setExpirationTime(ex);
        orderParam.setMaxAuditPrice(max);
        orderParam.setRedisOrderKeyName(redisKey);
        orderParam.setUnsubPercent(unSub);
        orderParamRepository.save(orderParam);
        return new ResultData<>("修改成功");
    }

}

