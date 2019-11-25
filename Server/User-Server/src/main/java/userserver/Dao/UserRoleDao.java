package userserver.Dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import userserver.Bean.UserWithRole;

import java.util.List;

/**
 * @author 张自强
 */
@Repository
public interface UserRoleDao extends JpaRepository<UserWithRole,Long> {

    /**
     * 查出用户
     * @param username 用户名
     * @return 用户详细信息
     */
    UserWithRole findByUsername(String username);

    /** 功能描述: 查出用户角色集
      * @Param: [username]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/25 11:22
      */
    @Query(nativeQuery = true, value = "SELECT role.enname enrole FROM USER " +
            "LEFT JOIN user_role ON USER.userid = user_role.user_id\n" +
            "LEFT JOIN role ON role.id = user_role.role_id\n" +
            "LEFT JOIN role_permission ON role_permission.role_id = role.id\n" +
            "LEFT JOIN permission ON permission.id = role_permission.permission_id\n" +
            "where username = :username")
    List<String> findRolesByUsername(@Param("username")String username);

    /** 功能描述: 查出用户权限集
      * @Param: [username]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/25 11:25
      */
    @Query(nativeQuery = true, value = "SELECT permission.enname enrole FROM USER " +
            "LEFT JOIN user_role ON USER.userid = user_role.user_id\n" +
            "LEFT JOIN role ON role.id = user_role.role_id\n" +
            "LEFT JOIN role_permission ON role_permission.role_id = role.id\n" +
            "LEFT JOIN permission ON permission.id = role_permission.permission_id\n" +
            "where username = :username")
    List<String> findPermissionsByUsername(@Param("username")String username);
}
