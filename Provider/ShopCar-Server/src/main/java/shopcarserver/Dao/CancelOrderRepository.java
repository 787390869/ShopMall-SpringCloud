package shopcarserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shopcarserver.Bean.CancelOrder;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 13:57
 **/
@Repository
public interface CancelOrderRepository extends JpaRepository<CancelOrder, Long> {

    CancelOrder findByOrderId(Long orderId);

}
