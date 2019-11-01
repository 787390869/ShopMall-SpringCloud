package userserver.Dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import userserver.Bean.UserWithRole;

/**
 * @author 张自强
 */
@Repository
public interface UserRoleDao extends JpaRepository<UserWithRole,Long> {

    /**
     * 查出用户权限
     * @param username 用户名
     * @return 用户详细信息
     */
    @Query(nativeQuery = true, value = "select user.*,role.enname role,permission.enname from user \n" +
            "left join user_role on user.userid = user_role.user_id\n" +
            "left join role on role.id = user_role.role_id\n" +
            "left join role_permission on role_permission.role_id = role.id\n" +
            "left join permission on permission.id = role_permission.permission_id\n" +
            "where user.username = :username")
    UserWithRole getUser(@Param("username") String username);
}
