package userserver.Service;

import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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
    private UserDao userDao;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PermissionRepository permissionRepository;

    @Autowired
    private UserRoleDao userRoleDao;

    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    private UserRoleRepository userRoleRepository;

    @Autowired
    private UserRoleDaoImpl userRoleDaoImpl;

    @Autowired
    private RolePermissionRepository rolePermissionRepository;

    /** 功能描述: 查询用户分页数据
      * @Param: [pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/25 14:01
      */
    public ResultData<JSONObject> findAllUser(int pageNum, int pageSize) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        Page<User> users = userDao.findAll(pageable);
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
        List<String> roles = roleRepository.findAll().stream().map(r -> r.getEnName()).collect(Collectors.toList());
        List<String> permissions = permissionRepository.findAll().stream().map(p -> p.getEnName()).collect(Collectors.toList());

        if (username.equals("all")) {
            username = null;
        }
        int start = (pageNum - 1) * pageSize;
        int end = pageNum * pageSize;

        List<Object[]> list = userRoleDaoImpl.findUserWithPermission(start, end, username);
        List<UserEntity> permissionList = castEntity(list, UserEntity.class);
        Map<String, List<UserEntity>> permissionMap = permissionList.stream().collect(Collectors.groupingBy(p -> p.getEnrole()));
        Map<String, List<String>> permission = new HashMap<>();
        permissionMap.keySet().forEach(p -> {
            permission.put(p, permissionMap.get(p).stream().map(m -> m.getEnname()).collect(Collectors.toList()));
        });

        List<Object[]> daoList = userRoleDaoImpl.findUserWithRole(start, end, username);
        List<UserEntity> roleList = castEntity(daoList, UserEntity.class);
        Map<String, List<UserEntity>> roleMap = roleList.stream().collect(Collectors.groupingBy(r -> r.getEnrole()));
        Map<String, List<String>> role = new HashMap<>();
        roleMap.keySet().forEach(k -> {
            role.put(k, roleMap.get(k).stream().map(r -> r.getEnname()).collect(Collectors.toList()));
        });

        LinkedList authorization = new LinkedList();
        role.keySet().forEach(k -> {
            Map map= new HashMap();
            map.put("name", k);
            map.put("permissions", permission.get(k));
            map.put("roles", role.get(k));
            map.put("id", userRoleDao.findIdByUserName(k));
            authorization.add(map);
        });
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("roles", roles);
        jsonObject.put("permissions", permissions);
        jsonObject.put("UserAuthorization", authorization);
        jsonObject.put("count", authorization.size());
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 修改用户角色
      * @Param: [info]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/28 17:48
      */
    @Transactional(rollbackFor = Exception.class)
    public ResultData changeRole(String info) {
        JSONObject infoObj = JSONObject.parseObject(info);
        Long userId = Optional.ofNullable(infoObj.getLong("id")).orElse(-1L);
        String roles= Optional.ofNullable(infoObj.getString("roles")).orElse("");
        JSONArray roleArray = JSONArray.parseArray(roles);

        List<String> allRoles = roleRepository.findAll().stream().map(r -> r.getEnName()).collect(Collectors.toList());

        roleArray.stream().forEach(r -> {
            UserRole userRole = userRoleRepository.findByUserIdAndRoleId(userId, roleRepository.findByEnName((String) r).getId());
            userRole.setAvailable(1);
            userRoleRepository.save(userRole);
        });

        allRoles.stream().forEach(allRole -> {
            if(!roleArray.contains(allRole)) {
                UserRole userRole = userRoleRepository.findByUserIdAndRoleId(userId, roleRepository.findByEnName(allRole).getId());
                userRole.setAvailable(0);
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

        List<String> allPermissions = permissionRepository.findAll().stream().map(p -> p.getEnName()).collect(Collectors.toList());

        permissionArray.stream().forEach(p -> {
            RolePermission rolePermission = rolePermissionRepository.findByRoleIdAndPermissionId(roleId, permissionRepository.findByEnName((String) p).getId());
            rolePermission.setAvailable(1);
            rolePermissionRepository.save(rolePermission);
        });

        allPermissions.stream().forEach(allPermission -> {
            if(!permissionArray.contains(allPermission)) {
                RolePermission rolePermission = rolePermissionRepository.findByRoleIdAndPermissionId(roleId, permissionRepository.findByEnName(allPermission).getId());
                rolePermission.setAvailable(0);
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
    public ResultData<JSONObject> findAllRolePermission() {
        List<String> roles = roleRepository.findAll().stream().map(r -> r.getName()).collect(Collectors.toList());
        List<String> permissions = permissionRepository.findAll().stream().map(p -> p.getEnName()).collect(Collectors.toList());
        JSONObject jsonObject = new JSONObject();

        LinkedList authorization = new LinkedList();
        roles.stream().forEach(role -> {
            List<Object[]> daoList = userRoleDaoImpl.findRoleWithPermission(role);
            Map map = new HashMap<>();
            try {
                List<RolePermissionEntity>  rolePermissionEntities = castEntity(daoList, RolePermissionEntity.class);
                List<String> roleList = rolePermissionEntities.stream().map(rp -> rp.getEnname()).collect(Collectors.toList());
                map.put("name", role);
                map.put("permissions", roleList);
                map.put("id", roleRepository.findByName(role).getId());
            } catch (Exception e) {
                e.printStackTrace();
            }
            authorization.add(map);
        });
        jsonObject.put("authorizations", authorization);
        jsonObject.put("roles", roles);
        jsonObject.put("permissions", permissions);
        return new ResultData<>(jsonObject);
    }
}

