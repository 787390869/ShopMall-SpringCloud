package goodserver.Dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import goodserver.Bean.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-27 10:08
 **/
@Repository
@Mapper
public interface GoodsMapper {

    /** 根据表名查询数据 */
    @Select("select * from ${table} limit 0,#{number}")
    List<Goods> findAll(@Param("table")String tableName, @Param("number")int number);

    /** 排序限制查询商品数据 */
    @Select("select * from ${table} order by #{orderWord} #{order} limit #{start},#{end}")
    List<Goods> findList(@Param("table")String tableName, @Param("orderWord")String orderWord, @Param("order")String order,
                         @Param("start")int start, @Param("end")int end);

    /** 查询某类商品总数 */
    @Select("select count(id) from ${table}")
    int count(@Param("table") String tableName);

    @Select("select * from ${table} where id = #{id}")
    Goods findByIdAndGoodsname(@Param("id")int id, @Param("table")String tableName);

    /** 所有商品 */
    @Select("select name from test")
    List<String> allGoods();

}
