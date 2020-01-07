package qa.Service;

import base.BaseWeb.ResultData;
import base.Client.Goods.GoodsClient;
import base.Client.User.UserClient;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import qa.Entity.Answer;
import qa.Entity.Comment;
import qa.Entity.Reply;
import qa.Mapper.AnswerMapper;
import qa.Mapper.CommentMapper;
import qa.Mapper.QuestionMapper;
import qa.Entity.Question;
import qa.Mapper.ReplyMapper;

import java.util.List;
import java.util.Optional;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:29
 **/
@Service
public class QuestionService extends ServiceImpl<QuestionMapper, Question> {

    @Autowired
    private QuestionMapper questionMapper;
    @Autowired
    private AnswerMapper answerMapper;
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private GoodsClient goodsClient;
    @Autowired
    private UserClient userClient;

    /** 功能描述: 疑问分页数据
      * @Param: [info]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/2 12:48
      */
    public ResultData<JSONObject> list(String info) {
        JSONObject infoObj = JSONObject.parseObject(info);
        int pageNo = Optional.ofNullable(infoObj.getInteger("pageNo")).orElse(1);
        int pageSize = Optional.ofNullable(infoObj.getInteger("pageSize")).orElse(10);
        String tableName = Optional.ofNullable(infoObj.getString("tableName")).orElse("");
        String goodName = Optional.ofNullable(infoObj.getString("goodName")).orElse("");
        String question = Optional.ofNullable(infoObj.getString("question")).orElse("");
        JSONObject jsonObject = new JSONObject();
        QueryWrapper<Question> wrapper = new QueryWrapper<>();
        Page<Question> page = new Page<>(pageNo, pageSize);

        if (!StringUtils.isEmpty(tableName)) {
            wrapper.like("tablename", tableName);
        }
        if (!StringUtils.isEmpty(goodName)) {
            wrapper.like("goodname", goodName);
        }
        if(!StringUtils.isEmpty("question")) {
            wrapper.like("question", question);
        }
        IPage iPage = questionMapper.selectPage(page, wrapper);

        jsonObject.put("data", iPage.getRecords());
        jsonObject.put("count", iPage.getTotal());
        jsonObject.put("pages", iPage.getPages());
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 查询出对应商品的提问回答, 评论回复
      * @Param: [goodId, tablename]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/2 15:49
      */
    public ResultData<JSONObject> detailData(int goodId, String tablename, String username) {
        QueryWrapper<Question> questionWrapper = new QueryWrapper<>();
        QueryWrapper<Comment> commentWrapper = new QueryWrapper<>();
        QueryWrapper<Answer> answerWrapper = new QueryWrapper<>();
        QueryWrapper<Reply> replyWrapper = new QueryWrapper<>();
        questionWrapper.eq("good_id", goodId);
        commentWrapper.eq("good_id", goodId);
        List<Question> questionList = questionMapper.selectList(questionWrapper);
        questionList.stream().forEach(q -> {
            q.setAnswers(answerMapper.selectList(answerWrapper.eq("question_id", q.getId())));
        });
        List<Comment> comments = commentMapper.selectList(commentWrapper);
        comments.stream().forEach(c -> {
            c.setReplies(replyMapper.selectList(replyWrapper.eq("comment_id", c.getId())));
        });
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("questions", questionList);
        jsonObject.put("comments", comments);
        jsonObject.put("goods", goodsClient.getOneGoods(goodId, tablename).getData());
        jsonObject.put("userInfo", userClient.userInfo(username).getData());
        return new ResultData<>(jsonObject);
    }
}

