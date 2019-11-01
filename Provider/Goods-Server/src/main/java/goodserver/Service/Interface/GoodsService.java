package goodserver.Service.Interface;

import goodserver.Bean.Goods;

import java.util.List;

/**
 * @author 张自强
 */
public interface GoodsService {

    /**
     * 根据表名查询需要的数据
     * @param tablename 表名
     * @return 整张表数据
     */
    List<Goods> findAll(String tablename, int number);

    /**
      * 商品列表数据: 用于分页
      *@Author ZhangZiQiang
      *@Param [tablename, page, size, orderword, order]
      *@Date 2019/9/23 15:01
      */
    List<Goods> findByName(String tablename, int page, int size, String orderword, String order);

    /**
      * 商品总数
      *@Author ZhangZiQiang
      *@Param [tablename]
      *@Date 2019/9/23 15:02
      */
    int getGoodsCount(String tablename);

    Goods findByIdAndGoodsname(int id, String goodname);
}
