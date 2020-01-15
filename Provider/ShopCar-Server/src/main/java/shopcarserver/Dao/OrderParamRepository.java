package shopcarserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shopcarserver.Bean.OrderParam;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-14 09:42
 **/
@Repository
public interface OrderParamRepository extends JpaRepository<OrderParam, Integer> {
}
