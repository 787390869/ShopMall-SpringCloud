package shopcarserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shopcarserver.Bean.OrderGoods;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-15 09:32
 **/
@Repository
public interface OrderGoodsRepository extends JpaRepository<OrderGoods, Long> {

    /** 根据主订单Id查询订单商品 */
    List<OrderGoods> findByOrderId(Long orderId);

}
