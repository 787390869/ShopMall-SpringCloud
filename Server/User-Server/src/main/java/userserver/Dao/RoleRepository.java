package userserver.Dao;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import userserver.Bean.Role;

import java.awt.print.Pageable;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-27 15:40
 **/
@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

    @Override
    List<Role> findAll();

    Role findByEnName(String enname);

}
