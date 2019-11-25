package userserver.Dao;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import userserver.Bean.User;

import java.util.List;

/**
 * @author 张自强
 */
@Repository
public interface UserDao extends JpaRepository<User,Long> {
    
    /**
      * 根据用户名查询用户
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Date 2019/9/9 15:21
      */
    User findByUsername(String username);

    @Override
    Page<User> findAll(Pageable pageable);

}
