package searchserver.Dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;
import searchserver.Bean.Menu;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/7 23:40
 **/
@Repository
public interface MenuRepository extends ElasticsearchRepository<Menu, Long> {

    /**
      * 通过商品名检索
      *@Author ZhangZiQiang
      *@Param [name, pageable]
      *@Return org.springframework.data.domain.Page<searchserver.Bean.Menu>
      *@Date 2019/9/9 13:50
      */
    Page<Menu> findByNameLike(String name,Pageable pageable);

    /**
      * 检索全部商品
      *@Author ZhangZiQiang
      *@Param [pageable]
      *@Return org.springframework.data.domain.Page<searchserver.Bean.Menu>
      *@Date 2019/9/9 13:50
      */
    @Override
    Page<Menu> findAll(Pageable pageable);

    /**
      * 通过商品拼音检索
      *@Author ZhangZiQiang
      *@Param [pinyin]
      *@Return org.springframework.data.domain.Page<searchserver.Bean.Menu>
      *@Date 2019/9/9 13:51
      */
    Page<Menu> findByPinyinLike(String pinyin, Pageable pageable);

}
