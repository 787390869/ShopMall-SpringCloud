package goodserver.Service;
import BaseUtils.PinYinUtil;
import goodserver.Bean.Goods;
import goodserver.Service.Interface.GoodsService;
import org.hibernate.query.internal.NativeQueryImpl;
import org.springframework.stereotype.Service;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * @author 张自强
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    @PersistenceContext
    EntityManager entityManager;

    /**
     * 根据表名查询需要的数据
     * @param tablename
     * @return
     */
    @Override
    public List<Goods> findAll(String tablename, int number) {
        tablename = PinYinUtil.toPinyin(tablename);
        String sql = "select * from "+ tablename + " where id <= :number";
        Query query = entityManager.createNativeQuery(sql,Goods.class);
        query.unwrap(NativeQueryImpl.class).setParameter("number",number);
        List<Goods> goods = query.getResultList();
        return goods;
    }

    /**
      * 根据表名获取商品
      *@Author ZhangZiQiang
      *@Param [tablename]
      *@Date 2019/9/11 11:18
      */
    @Override
    public List<Goods> findByName(String tablename, int page, int size, String orderword, String order) {
        tablename = PinYinUtil.toPinyin(tablename);
        String sql = "select * from "+ tablename;
        sql += " order by " + orderword + " " + order + " limit " + page*size + "," + (page+1)*size ;
        Query query = entityManager.createNativeQuery(sql, Goods.class);
        query.unwrap(NativeQueryImpl.class);
        return query.getResultList();
    }

    /**
      * 根据商品名查询商品总数
      *@Author ZhangZiQiang
      *@Param [tablename]
      *@Date 2019/9/23 15:02
      */
    @Override
    public int getGoodsCount(String tablename) {
        tablename = PinYinUtil.toPinyin(tablename);
        String sql = "select count(id) from " + tablename;
        Query query = entityManager.createNativeQuery(sql);
        List list = query.getResultList();
        return Integer.parseInt(list.get(0).toString());
    }

    @Override
    public Goods findByIdAndGoodsname(int id, String goodname) {
        goodname = PinYinUtil.toPinyin(goodname);
        String sql = "select * from " + goodname + " where id = :id";
        Query query = entityManager.createNativeQuery(sql, Goods.class);
        query.setParameter("id", id);
        List<Goods> goodsList = query.getResultList();
        return  goodsList.get(0);
    }
}
