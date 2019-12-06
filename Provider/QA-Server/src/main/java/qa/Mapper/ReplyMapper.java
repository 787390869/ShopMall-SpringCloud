package qa.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Entity.Reply;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 15:02
 **/
@Mapper
@Repository
public interface ReplyMapper extends BaseMapper<Reply> {
}
