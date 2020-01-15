package shopcarserver.Controller;

import base.BaseWeb.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import shopcarserver.Bean.OrderParam;
import shopcarserver.Service.OrderParamService;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-14 09:42
 **/
@RestController
@RequestMapping("order_param")
public class OrderParamController {

    @Autowired
    private OrderParamService orderParamService;

    @GetMapping("info")
    public ResultData<OrderParam> info() {
        return new ResultData<>(orderParamService.getParam());
    }

    @PostMapping("modify")
    public ResultData<String> modify(@RequestParam("ex")int ex, @RequestParam("max")String max,
                                     @RequestParam("redisKey") String redisKey, @RequestParam("unSub")String unsub) {
        return orderParamService.modify(ex, max, redisKey, unsub);
    }

}

