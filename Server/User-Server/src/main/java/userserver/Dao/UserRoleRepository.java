package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.UserRole;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 21:43
 **/
@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {
}
