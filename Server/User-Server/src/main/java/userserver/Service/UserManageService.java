package userserver.Service;

import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import userserver.Bean.*;
import userserver.Dao.*;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-25 13:45
 **/
@Service
public class UserManageService extends BaseService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PermissionRepository permissionRepository;

    @Autowired
    private UserRoleRepository userRoleRepository;

    @Autowired
    private RolePermissionRepository rolePermissionRepository;

    /** 功能描述: 查询用户分页数据
      * @Param: [pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/25 14:01
      */
    public ResultData<JSONObject> findAllUser(int pageNum, int pageSize) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        Page<User> users = userRepository.findAll(pageable);
        JSONObject jsonObject = new JSONObject();
        users.getContent().stream().forEach(c -> c.setPassword(encodeMd5(c.getPassword())));
        jsonObject.put("list", users.getContent());
        jsonObject.put("count", users.getTotalPages());
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 用户角色权限数据
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2019/11/27 16:02
      */
    public ResultData<JSONObject> userRolePermissionData(int pageNum, int pageSize, String username) throws Exception{
        Pageable pageable = PageRequest.of((pageNum -1), pageSize);
        Page<User> data = userRepository.findAll(pageable);
        JSONObject  result = new JSONObject();
        List<User> userList = data.getContent();
        userList.stream().forEach(user -> {
            Set<String> permissions = new HashSet<>();
            Set<String> roles = new HashSet<>();
            user.getRoles().stream().forEach(role -> {
                roles.add(role.getEnname());
                role.getPermissions().stream().forEach(permission -> {
                    permissions.add(permission.getEnname());
                });
            });
            user.setPermissions(permissions);
            user.setMyRoles(roles);
        });
        result.put("users", data.getContent());
        result.put("count", data.getTotalPages());
        result.put("roles", roleRepository.findAll().stream().map(m -> m.getEnname()).collect(Collectors.toSet()));
        result.put("permissions", permissionRepository.findAll().stream().map(p -> p.getEnname()).collect(Collectors.toSet()));
        return new ResultData<>(result);
    }

    /** 功能描述: 修改用户角色
      * @Param: [info]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/28 17:48
      */
    @Transactional(rollbackFor = Exception.class)
    public ResultData changeRole(String info) {
        JSONObject infoObj = JSON.parseObject(info);
        Long userId = infoObj.getLong("userId");
        JSONArray roleArray = infoObj.getJSONArray("roles");
        List<String> roles = userRoleRepository.findByUserId(userId).stream()
                .map(r -> roleRepository.findById(r.getRoleId()).get().getEnname()).collect(Collectors.toList());
        roles.stream().forEach(role -> {
            if(!roleArray.contains(role)) {
                Role oldRole = roleRepository.findByEnname(role);
                userRoleRepository.deleteByUserIdAndRoleId(userId, oldRole.getId());
            }
        });
        roleArray.stream().forEach(role -> {
            Long roleId = roleRepository.findByEnname(role.toString()).getId();
            if (!roles.contains(role)) {
                UserRole userRole = UserRole.builder().userId(userId).roleId(roleId).build();
                userRoleRepository.save(userRole);
            }
        });
        return new ResultData(ResultData.RESULT_CODE_SUCCESS, ResultData.MESSAGE_UPDATE_SUCCESS);
    }

    /** 功能描述: 更改角色权限
      * @Param: [info]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/29 12:42
      */
    @Transactional(rollbackFor = Exception.class)
    public ResultData changePermission(String info) {
        JSONObject infoObj = JSONObject.parseObject(info);
        Long roleId = Optional.ofNullable(infoObj.getLong("id")).orElse(-1L);
        String roles= Optional.ofNullable(infoObj.getString("permissions")).orElse("");
        JSONArray permissionArray = JSONArray.parseArray(roles);

        List<String> permissions = rolePermissionRepository.findByRoleId(roleId).stream()
                .map(p -> permissionRepository.findById(p.getPermissionId()).get().getEnname()).collect(Collectors.toList());

        permissions.stream().forEach(p -> {
            if (!permissionArray.contains(p)) {
                Permission oldPermission = permissionRepository.findByEnname(p);
                rolePermissionRepository.deleteByRoleIdAndPermissionId(roleId, oldPermission.getId());
            }
        });

        permissionArray.stream().forEach(p -> {
            Long permissionId = permissionRepository.findByEnname(p.toString()).getId();
            if (!permissions.contains(p)) {
                RolePermission rolePermission = RolePermission.builder().roleId(roleId).permissionId(permissionId).build();
                rolePermissionRepository.save(rolePermission);
            }
        });
        return new ResultData(ResultData.RESULT_CODE_SUCCESS, ResultData.MESSAGE_UPDATE_SUCCESS);
    }

    /** 功能描述: 查出角色权限集
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2019/11/29 11:18
      */
    public ResultData<JSONObject> findAllRolePermission(int pageNum, int pageSize) {
        Pageable pageable = PageRequest.of((pageNum -1), pageSize);
        Page<Role> data = roleRepository.findAll(pageable);
        data.getContent().stream().forEach(role -> {
            role.setUsers(new ArrayList<>());
            Set<String> permissionSet = new HashSet<>();
            role.getPermissions().stream().forEach(permission -> {
                permissionSet.add(permissionRepository.findById(permission.getId()).get().getEnname());
            });
            role.setMyPermissions(permissionSet);
        });
        List<String> permissions = permissionRepository.findAll().stream()
                .map(permission -> permission.getEnname()).collect(Collectors.toList());
        JSONObject result = new JSONObject();
        result.put("users", data.getContent());
        result.put("permissions", permissions);
        result.put("count", data.getTotalPages());
        return new ResultData<>(result);
    }

}

