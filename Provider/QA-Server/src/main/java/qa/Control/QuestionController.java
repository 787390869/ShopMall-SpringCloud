package qa.Control;

import BaseWeb.BaseController;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import qa.Dao.QuestionMapper;
import qa.Entity.Question;
import qa.Service.QuestionService;

import java.util.*;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:30
 **/
@RestController
@RequestMapping("question")
public class QuestionController extends BaseController {

    @Autowired
    private QuestionMapper questionMapper;

    @Autowired
    private QuestionService questionService;

    @PreAuthorize(value = "hasAnyRole('admin') or hasAnyAuthority('ROLE_handle')")
    @GetMapping("allQuestion")
    public List<Question> findAll() {
        List<Question> questionList = questionMapper.selectList(new QueryWrapper<>());
        return questionList;
    }

    @GetMapping("user")
    public String getUser() {
        System.out.println(this.getUserDomain());
        return null;
    }

    @GetMapping("dysnSQL")
    public List<Question> dysnSQL() {
        List<Integer> ids = new ArrayList<>();
        ids.add(2); ids.add(3); ids.add(4);
        int[] array = new int[]{2,3,4};
        Set<Integer> set = new HashSet();
        set.add(2);set.add(3);set.add(4);
        Map<String, Integer> map = new HashMap();
        map.put("1", 2);map.put("2", 3);map.put("3", 4);
        return questionMapper.forEach(array);
    }
}

