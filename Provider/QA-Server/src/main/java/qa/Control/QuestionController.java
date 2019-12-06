package qa.Control;

import BaseWeb.BaseController;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import qa.Mapper.QuestionMapper;
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

    @PostMapping("list")
    public ResultData<JSONObject> list(String info) {
        return questionService.list(info);
    }

    @PostMapping("detail/{goodId}/{tablename}")
    public ResultData<JSONObject> detail(@PathVariable("goodId")int goodId, @PathVariable("tablename")String tablename) {
        return questionService.detailData(goodId, toPinyin(tablename), this.getUserName());
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

