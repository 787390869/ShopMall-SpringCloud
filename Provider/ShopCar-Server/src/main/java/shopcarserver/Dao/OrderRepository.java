package shopcarserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shopcarserver.Bean.Order;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:17
 **/
@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    Order findByCode(String code);

}
