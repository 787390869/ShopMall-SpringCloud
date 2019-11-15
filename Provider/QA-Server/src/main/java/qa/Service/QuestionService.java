package qa.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import qa.Dao.QuestionMapper;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:29
 **/
@Service
public class QuestionService {

    @Autowired
    private QuestionMapper questionMapper;
}

