package userserver.Controll;

import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
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

    @GetMapping("role_permission/{pageNum}/{pageSize}/{username}")
    public ResultData<JSONObject> rolePermission(@PathVariable("pageNum")int pageNum, @PathVariable("pageSize")int pageSize,
                                                 @PathVariable("username")String username) throws Exception{
        return userManageService.userRolePermissionData(pageNum, pageSize, username);
    }

    @PostMapping("doChangeUserRole")
    public ResultData changeRole(@Param("info")String info) {
        return userManageService.changeRole(info);
    }

    @PostMapping("doChangeRolePermission")
    public ResultData changePermission(@Param("info")String info){return userManageService.changePermission(info);}

    @GetMapping("rolePermission")
    public ResultData<JSONObject> rolePermissionData(){
        return userManageService.findAllRolePermission();
    }
}

