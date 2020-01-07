package qa.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Entity.Financial;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 14:06
 **/
@Mapper
@Repository
public interface FinancialMapper extends BaseMapper<Financial> {
}
