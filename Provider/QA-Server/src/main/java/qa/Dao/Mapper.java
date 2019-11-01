package qa.Dao;

import org.springframework.stereotype.Repository;
import qa.Bean.Employee;
import qa.Bean.Question;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 15:52
 **/
@Repository
public interface Mapper {
    Question getQuestionById(int id);
    List<Employee> getEmployee();
}
