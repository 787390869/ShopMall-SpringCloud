package qa.Control;

import com.alibaba.fastjson.JSONArray;
import qa.Bean.Question;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-10-16 16:58
 **/
public class Test {
    public static void main(String[] args) {
        Question question1 = new Question(1,"jianceng","aa","为什么", "因为所以");
        Question question2 = new Question(2,"buou","hh","为什么", "因为所以");
        Question question3 = new Question(3,"lanmao","aa","为什么", "因为所以");
        Question question4 = new Question(4,"yingduan","hh","为什么", "因为所以");
        Question question5 = new Question(5,"meiduan","hh","为什么", "因为所以");
        List<Question> questions = new ArrayList<>();
        questions.add(question1);questions.add(question2);questions.add(question3);questions.add(question4);questions.add(question5);

        Iterator<Question> iterator = questions.iterator();

        /*while (iterator.hasNext()) {
            Question question = iterator.next();
            if(question.getTableName() == "buou") {
                System.out.println("已发现");
            }
        }*/
        /*List<Question> list = new ArrayList<>();

        list = questions.stream().filter(q -> q.getTableName() == "buou").collect(Collectors.toList());

        System.out.println(list);

        // 根据id重新组装数据
        Map<Integer, List<Question>> map =
                questions.stream().collect(Collectors.groupingBy(q -> q.getId()));
        System.out.println(JSONArray.toJSONString(map));*/

        // 判断重新组装list
        /*List<Question> list = questions.stream().filter(q -> {
            if(q.getGoodName() == "aa") {
                return true;
            } else {
                return false;
            }
        }).collect(Collectors.toList());*/

        // 过滤条件,设置新值,重新组装
        /*Map<String,List<Question>> list = questions.stream().map(q -> {
            if(q.getGoodName() == "aa") {
                q.setAnswer("cnm");
                return q;
            } else {
                q.setAnswer("cnb");
                return q;
            }
        }).collect(Collectors.groupingBy(q-> q.getAnswer()));*/

        Optional<Question> list = questions.stream().filter(q-> q.getGoodName().equals("aa")).findAny();


        System.out.println(JSONArray.toJSONString(list));
    }
}

