package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.Province;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 13:25
 **/
@Repository
public interface ProvinceRepository extends JpaRepository<Province, Long> {

    /**
      * 查询所有省份
      *@Author ZhangZiQiang
      *@Param []
      *@Date 2019/9/10 13:31
      */
    @Override
    List<Province> findAll();

}
