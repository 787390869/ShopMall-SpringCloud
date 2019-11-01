package goodserver.Dao;

import goodserver.Bean.Goods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author 张自强
 */
@Repository
public interface GoodsDao extends JpaRepository<Goods,Long> {
}
