package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.Area;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 13:29
 **/
@Repository
public interface AreaRepository extends JpaRepository<Area, Long> {

    /**
      * 通过城市code查询区县列表
      *@Author ZhangZiQiang
      *@Param [cityCode]
      *@Date 2019/9/10 13:33
      */
    List<Area> findByCityCode(String cityCode);

}
