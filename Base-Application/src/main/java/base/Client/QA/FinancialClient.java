package base.Client.QA;

import base.BaseWeb.ResultData;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 14:49
 **/
@FeignClient(value = "QA-Server")
@Component
public interface FinancialClient {

    /** 支付成功创建财务订单 */
    @PostMapping("financial/create/{orderId}/{income}/{creator}")
    ResultData<Integer> create(@PathVariable("orderId") Long orderId, @PathVariable("income") String income,
                                      @PathVariable("creator") String creator);

    /** 修改财务单状态 */
    @PostMapping("financial/modify_status/{orderId}/{status}/{outcome}")
    ResultData modify(@PathVariable("orderId")Long orderId, @PathVariable("status") int status, @PathVariable("outcome")String outcome);


}
