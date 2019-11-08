package qa.Control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import qa.Bean.Employee;
import qa.Bean.Question;
import qa.Dao.Mapper;
import qa.Dao.QuestionDao;
import qa.Service.QuestionService;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 12:25
 **/
@RestController
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private QuestionDao questionDao;

    @Autowired
    private Mapper mapper;

    @GetMapping("allQuestion")
    @PreAuthorize("hasAnyAuthority('admin')")
    public List<Question> getAllQuestion() {
        return questionService.findAll();
    }

    @GetMapping("oneQuestion")
    public Question getOneQuestion() {
        return questionDao.findById(2);
    }

    @GetMapping("employee")
    public List<Employee> getEmployees() {
        return mapper.getEmployee();
    }

    @GetMapping("updateAnswer")
    public void updateAnswer() throws Exception{
        questionService.updateAnswer();
    }
}
