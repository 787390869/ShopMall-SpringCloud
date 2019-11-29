package userserver.Service;

import org.hibernate.query.internal.NativeQueryImpl;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-29 10:10
 **/
@Service(value = "userRoleDaoImpl")
public class UserRoleDaoImpl{

    @PersistenceContext
    private EntityManager entityManager;

    /** 功能描述: 查出用户权限集
      * @Param: [start, end, username]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/29 10:24
      */
    List<Object[]> findUserWithPermission(int start, int end, String username) {
        String sql = "SELECT permission.enname, user.username enrole FROM USER\n" +
                     "LEFT JOIN user_role ON USER.userid = user_role.user_id\n" +
                     "LEFT JOIN role ON role.id = user_role.role_id\n" +
                     "LEFT JOIN role_permission ON role_permission.role_id = role.id\n" +
                     "LEFT JOIN permission ON permission.id = role_permission.permission_id where user_role.available =1 and role_permission.available=1\n" +
                     "and user.userid >= :start and user.userid <= :end\n";
        if (username != null && !StringUtils.isEmpty(username)) {
            sql += "and username like concat('%',:username, '%')";
        }
        Query query = entityManager.createNativeQuery(sql);
        query.unwrap(NativeQueryImpl.class).setParameter("start", start).setParameter("end", end);
        if(username != null && !StringUtils.isEmpty(username)) {
            query.setParameter("username", username);
        }
        List<Object[]> list = query.getResultList();
        return list;
    }

    /** 功能描述: 查出用户角色集
      * @Param: [start, end, username]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/29 10:25
      */
    List<Object[]> findUserWithRole(int start, int end, String username) {
        String sql = "SELECT role.enname, user.username enrole FROM USER\n" +
                "LEFT JOIN user_role ON USER.userid = user_role.user_id\n" +
                "LEFT JOIN role ON role.id = user_role.role_id\n" +
                "LEFT JOIN role_permission ON role_permission.role_id = role.id\n" +
                "LEFT JOIN permission ON permission.id = role_permission.permission_id where user_role.available =1 and role_permission.available=1\n" +
                "and user.userid >= :start and user.userid <= :end\n";
        if (username != null && !StringUtils.isEmpty(username)) {
            sql += "and username like concat('%',:username, '%')";
        }
        Query query = entityManager.createNativeQuery(sql);
        query.unwrap(NativeQueryImpl.class).setParameter("start", start).setParameter("end", end);
        if(username != null && !StringUtils.isEmpty(username)) {
            query.setParameter("username", username);
        }
        List<Object[]> list = query.getResultList();
        return list;
    }

    /** 功能描述:  通过角色中文名查权限
      * @Param: [name]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/29 11:13
      */
    List<Object[]> findRoleWithPermission(String name) {
        String sql = "SELECT r.name, p.enname FROM role r\n" +
                "LEFT JOIN role_permission rp ON r.id = rp.role_id\n" +
                "left join permission p on rp.permission_id = p.id\n" +
                "where rp.available = 1 and r.name=:name";
        Query query = entityManager.createNativeQuery(sql);
        query.unwrap(NativeQueryImpl.class).setParameter("name", name);
        List<Object[]> list = query.getResultList();
        return list;
    }
}

