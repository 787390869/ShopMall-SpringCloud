package qa.Service;

import base.BaseWeb.ResultData;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.Update;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import qa.Entity.Financial;
import qa.Mapper.FinancialMapper;

import java.util.Date;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 14:29
 **/
@Service
public class FinancialService {

    @Autowired
    private FinancialMapper financialMapper;

    /** 功能描述: 新建财务单
      * @Param: [orderId: 主订单Id, income: 收入, creator: 创建人]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 14:35
      */
    @LcnTransaction(propagation = DTXPropagation.SUPPORTS)
    @Transactional(rollbackFor = Exception.class)
    public ResultData<Integer> create(Long orderId, String income, String creator) {
        Financial financial = Financial.builder()
                .orderId(orderId).income(income)
                .status(Financial.FINANCIAL_CREATED).createTime(new Date()).creator(creator)
                .build();
        financialMapper.insert(financial);
        return new ResultData<>(financial.getStatus());
    }

    /** 功能描述: 根据Id查询财务单
      * @Param: [id]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 14:40
      */
    public ResultData<String> findById(Long id) {
        Financial financial = financialMapper.selectById(id);
        return new ResultData<>(JSON.toJSONString(financial));
    }

    /** 功能描述: 修改财务单状态
      * @Param: [id, status]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/7 14:40
      */
    @Transactional(rollbackFor = Exception.class)
    @LcnTransaction(propagation = DTXPropagation.SUPPORTS)
    public ResultData<String> modify(Long orderId, int status, String outcome) {
        Financial financial = financialMapper.selectOne(new QueryWrapper<Financial>().eq("order_id", orderId));
        UpdateWrapper updateWrapper = new UpdateWrapper<Financial>().set("status", status).eq("order_id", orderId);

        /** 审核通过: 退订 */
        if (status == Financial.FINANCIAL_COMPLETED) {
            updateWrapper.set("outcome", outcome);
        }

        financialMapper.update(financial, updateWrapper);
        return new ResultData<>("变更成功");
    }

}

