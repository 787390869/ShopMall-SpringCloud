package qa.Service;

import base.BaseWeb.ResultData;
import base.Client.ShopCar.ShopCarClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.codingapi.txlcn.tc.annotation.DTXPropagation;
import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.OrderUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import qa.Entity.Financial;
import qa.Mapper.FinancialMapper;

import java.util.Date;
import java.util.Optional;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 14:29
 **/
@Service
public class FinancialService {

    @Autowired
    private FinancialMapper financialMapper;

    @Autowired
    private ShopCarClient shopCarClient;

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

    /** 功能描述: 检索财务单
      * @Param: [searchInfo, pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/13 17:05
      */
    public ResultData<JSONObject> searchList(String searchInfo, int pageNum, int pageSize) {
        JSONObject jsonObject = new JSONObject();
        JSONObject infoObj = JSON.parseObject(searchInfo);
        String code = Optional.ofNullable(infoObj.getString("code")).orElse(null);
        Long id = -1L;
        if (!StringUtils.isEmpty(code)) {
            id = shopCarClient.getOne(code).getData();
        }
        int status = Optional.ofNullable(infoObj.getInteger("status")).orElse(-1);
        String price = Optional.ofNullable(infoObj.getString("price")).orElse(null);
        JSONArray createTimeArray = Optional.ofNullable(infoObj.getJSONArray("date")).orElse(null);
        String dateFrom = null;
        String dateTo = null;
        QueryWrapper queryWrapper = new QueryWrapper<Financial>();
        if (status != -1) {
            queryWrapper.eq("status", status);
        }
        if (createTimeArray != null) {
            dateFrom = createTimeArray.get(0).toString();
            dateTo = createTimeArray.get(1).toString();
            queryWrapper.ge("create_time", dateFrom);
            queryWrapper.le("create_time", dateTo);
        }
        if (id != -1) {
            queryWrapper.eq("order_id", id);
        }
        if (!StringUtils.isEmpty(price)) {
            String priceFrom = null;
            String priceTo = null;
            if (price.contains("以上")) {
                priceFrom = price.replace("以上", "");
            } else {
                priceFrom = price.split("-")[0];
                priceTo = price.split("-")[1];
            }
            if (priceFrom != null) {
                queryWrapper.gt("income", priceFrom);
            }
            if (priceTo != null) {
                queryWrapper.lt("income", priceTo);
            }
        }
        queryWrapper.orderByDesc("create_time");
        Page<Financial> page = new Page<>(pageNum, pageSize);
        IPage iPage = financialMapper.selectPage(page, queryWrapper);
        jsonObject.put("financials", iPage.getRecords());
        jsonObject.put("count", iPage.getTotal());
        return new ResultData<>(jsonObject);
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

    /** 功能描述: 根据主订单Id查询财务单
      * @Param: [orderId]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/13 13:52
      */
    public ResultData<String> getOne(Long orderId) {
        Financial financial = financialMapper.selectOne(new QueryWrapper<Financial>().eq("order_id", orderId));
        if (ObjectUtils.isEmpty(financial)) {
            return new ResultData<>();
        }
        return new ResultData<>(JSON.toJSONString(financial));
    }

}

