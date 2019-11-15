package qa.Control;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import qa.Dao.QuestionMapper;
import qa.Entity.Question;
import qa.Service.QuestionService;

import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:30
 **/
@RestController
@RequestMapping("question")
public class QuestionController {

    @Autowired
    private QuestionMapper questionMapper;

    @Autowired
    private QuestionService questionService;

    @PreAuthorize(value = "hasPermission('', 'handle')")
    @GetMapping("allQuestion")
    public List<Question> findAll() {
        List<Question> questionList = questionMapper.selectList(new QueryWrapper<>());
        return questionList;
    }
}

