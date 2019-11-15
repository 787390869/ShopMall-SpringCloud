package qa.Dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Entity.Question;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:28
 **/
@Repository
public interface QuestionMapper extends BaseMapper<Question> {
}
