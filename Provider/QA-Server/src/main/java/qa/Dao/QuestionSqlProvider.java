package qa.Dao;


import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-10-15 14:20
 **/
public class QuestionSqlProvider {
    public String selectOneQuestion(Map<String, Object> map) {
        System.out.println(map.get("id"));
        String sql = new SQL(){
            {
                SELECT(" * ");
                FROM("question");
                WHERE("id = #{id}");
            }
        }.toString();
        return sql;
    }
}

