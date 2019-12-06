package qa.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Entity.Answer;
import qa.Entity.Comment;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 15:01
 **/
@Mapper
@Repository
public interface AnswerMapper extends BaseMapper<Answer> {
}
