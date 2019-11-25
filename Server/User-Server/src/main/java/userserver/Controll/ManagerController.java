package userserver.Controll;

import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import userserver.Service.UserManageService;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-25 13:41
 **/
@RestController
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    private UserManageService userManageService;

    @PostMapping("userList/{pageNum}/{pageSize}")
    public ResultData<JSONObject> userList(@PathVariable("pageNum") int pageNum,@PathVariable("pageSize") int pageSize) {
        return userManageService.findAllUser(pageNum, pageSize);
    }

}

