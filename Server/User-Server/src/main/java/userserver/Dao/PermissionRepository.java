package userserver.Dao;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.Permission;

import java.awt.print.Pageable;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-27 15:45
 **/
@Repository
public interface PermissionRepository extends JpaRepository<Permission, Long> {

    @Override
    List<Permission> findAll();

    Permission findByEnname(String enname);
}
