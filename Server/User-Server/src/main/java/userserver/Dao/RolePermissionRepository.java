package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.Permission;
import userserver.Bean.RolePermission;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-28 18:04
 **/
@Repository
public interface RolePermissionRepository extends JpaRepository<RolePermission, Long> {

    List<RolePermission> findByRoleId(Long roleId);

    void deleteByRoleIdAndPermissionId(Long roleId, Long permissionId);
}
