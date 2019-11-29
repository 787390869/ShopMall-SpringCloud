package userserver.Service;

import BaseWeb.BaseService;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.hibernate.query.internal.NativeQueryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import userserver.Bean.Role;
import userserver.Bean.User;
import userserver.Bean.UserEntity;
import userserver.Bean.UserRole;
import userserver.Dao.*;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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
    public ResultData<JSONObject> userRolePermissionData() throws Exception{
        List<String> roles = roleRepository.findAll().stream().map(r -> r.getEnName()).collect(Collectors.toList());
        List<String> permissions = permissionRepository.findAll().stream().map(p -> p.getEnName()).collect(Collectors.toList());

        List<Object[]> list = userRoleDao.findUserWithPermission();
        List<UserEntity> permissionList = castEntity(list, UserEntity.class);
        Map<String, List<UserEntity>> permissionMap = permissionList.stream().collect(Collectors.groupingBy(p -> p.getEnrole()));
        Map<String, List<String>> permission = new HashMap<>();
        permissionMap.keySet().forEach(p -> {
            permission.put(p, permissionMap.get(p).stream().map(m -> m.getEnname()).collect(Collectors.toList()));
        });

        List<Object[]> daoList = userRoleDao.findUserWithRole();
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

        return new ResultData();
    }

}

