package qa.Service;

import org.mengyun.tcctransaction.api.Compensable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import qa.Bean.Question;
import qa.Dao.QuestionDao;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 12:23
 **/
@Service
public class QuestionService {

    @Autowired
    private QuestionDao questionDao;

    /**
      * 查询所有问题与回复
      *@Author ZhangZiQiang
      *@Param []
      *@Date 2019/10/12 13:42
      */
    public List<Question> findAll(){
        return questionDao.findAll();
    }

}
