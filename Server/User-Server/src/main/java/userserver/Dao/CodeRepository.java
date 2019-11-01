package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.Code;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/11 9:54
 **/
@Repository
public interface CodeRepository extends JpaRepository<Code, Long> {

    /**
      * 根据Id查询Code
      *@Author ZhangZiQiang
      *@Param [id]
      *@Date 2019/9/11 9:58
      */
    Code findById(int id);

    /**
      * 根据验证码查询
      *@Author ZhangZiQiang
      *@Param [right]
      *@Date 2019/9/11 10:03
      */
    Code findByRight(String right);
}
