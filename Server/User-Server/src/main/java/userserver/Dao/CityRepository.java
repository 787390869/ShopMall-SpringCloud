package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.City;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 13:28
 **/
@Repository
public interface CityRepository extends JpaRepository<City, Long> {

    /**
      * 通过省份code查询城市列表
      *@Author ZhangZiQiang
      *@Param [provinceCode]
      *@Date 2019/9/10 13:32
      */
    List<City> findByProvinceCode(String provinceCode);

}
