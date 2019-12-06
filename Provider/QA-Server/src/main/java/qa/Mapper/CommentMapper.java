package qa.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Entity.Comment;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 14:59
 **/
@Repository
@Mapper
public interface CommentMapper extends BaseMapper<Comment> {
}
