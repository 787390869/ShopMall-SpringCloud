package qa.Dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;
import qa.Bean.Question;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 15:52
 **/
@Repository
public interface Mapper extends BaseMapper<Question> {
}
