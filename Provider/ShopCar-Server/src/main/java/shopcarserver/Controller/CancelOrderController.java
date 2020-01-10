package shopcarserver.Controller;

import base.BaseWeb.BaseController;
import base.BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import shopcarserver.Service.CancelOrderService;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-10 10:33
 **/
@RestController
@RequestMapping("cancel")
public class CancelOrderController extends BaseController {

    @Autowired
    private CancelOrderService cancelOrderService;

    @GetMapping("list")
    public ResultData<JSONObject> search(String searchInfo, int pageNum, int pageSize) {
        return cancelOrderService.search(searchInfo, pageNum, pageSize);
    }

}

