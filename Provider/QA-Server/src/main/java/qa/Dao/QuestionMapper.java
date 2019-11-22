package qa.Dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import qa.Entity.Question;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:28
 **/
@Repository
public interface QuestionMapper extends BaseMapper<Question> {

    @Select("<script> select * from question <where>" +
            " <if test='id != null '> and id=#{id}</if> " +
            " <if test='question != null'> and question = #{question} </if>" +
            "</where></script>")
    List<Question> ifelse(@Param("id")int id, @Param("question") String question);

    @Select("<script> select * from question where id &gt;= 1 <choose> " +
            "<when test='tablename != \"\"'> and tableName = #{tablename}  </when>" +
            "<when test='question != null'> and question = #{question}   </when>" +
            "<otherwise> and answer is null </otherwise>" +
            " </choose></script>")
    List<Question> choose(@Param("tablename")String tablename, @Param("question")String question);


    @Select("<script> select * from question where id in " +
            "<foreach collection='ids' item='id' index='index' open='(' separator=',' close=')'> #{id}  </foreach>" +
            "</script>")
    List<Question> forEach(@Param("ids") int[] ids);
}
