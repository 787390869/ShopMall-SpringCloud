package qa.Control;

import base.BaseWeb.BaseController;
import base.BaseWeb.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import qa.Service.FinancialService;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 14:51
 **/
@RestController
@RequestMapping("/financial")
public class FinancialController extends BaseController {

    @Autowired
    private FinancialService financialService;

    @PostMapping("create/{orderId}/{income}/{creator}")
    public ResultData<Integer> create(@PathVariable("orderId") Long orderId, @PathVariable("income") String income,
                               @PathVariable("creator") String creator) {
        return financialService.create(orderId, income, creator);
    }

    @PostMapping("modify_status/{orderId}/{status}/{outcome}")
    public ResultData modify(@PathVariable("orderId")Long orderId, @PathVariable("status") int status,
                             @PathVariable("outcome")String outcome) {
        return financialService.modify(orderId, status, outcome);
    }

}

