package goodserver.Controll;

import BaseWeb.ResultData;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-29 14:08
 **/
@RestController
@RequestMapping("Auth")
public class AuthorizationCheckerController {

    /** 超级管理员权限检查 */
    @PreAuthorize("hasAnyAuthority('ROLE_Admin')")
    @PostMapping("checkAdminStatus")
    public ResultData checkAdminStatus() {
        return new ResultData();
    }

    /** 商城管理员权限检查 */
    @PreAuthorize("hasAnyAuthority('ROLE_ShopMallHandler')")
    @PostMapping("checkShopMallStatus")
    public ResultData checkShopMallStatus() {
        return new ResultData();
    }

    /** 系统监控员权限检查 */
    @PreAuthorize("hasAnyAuthority('ROLE_SystemHandler')")
    @PostMapping("checkSystemStatus")
    public ResultData checkSystemStatus() {
        return new ResultData();
    }

    /** 订单人员权限检查 */
    @PreAuthorize("hasAnyAuthority('ROLE_OrderHandler')")
    @PostMapping("checkOrderStatus")
    public ResultData checkOrderStatus() {
        return new ResultData();
    }

    /** 财务人员权限检查 */
    @PreAuthorize("hasAnyAuthority('ROLE_FinancialHandler')")
    @PostMapping("checkFinancialStatus")
    public ResultData checkFinancialStatus() {
        return new ResultData();
    }

}

