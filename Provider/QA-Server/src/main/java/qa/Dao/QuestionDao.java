package qa.Dao;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import qa.Bean.Question;
import qa.Dao.DynaSql.QuestionSqlProvider;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 12:19
 **/
@Mapper
@Repository
public interface QuestionDao {

    /**
      * 查询所有问答
      *@Author ZhangZiQiang
      *@Param []
      *@Date 2019/10/12 12:23
      */
    @Select("select * from question")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    List<Question> findAll();

    @Results(id = "questionMap", value = {
            @Result(property = "tableName", column = "tablename"),
            @Result(property = "goodName", column = "goodname"),
            @Result(property = "question", column = "question")
    })
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @SelectProvider(type = QuestionSqlProvider.class, method = "selectOneQuestion")
    Question findById(@Param("id") int id);

    @Update("update question set answer = #{answer} where id = #{id}")
    void updateAnswer(@Param("answer")String answer, @Param("id")int id);
}
