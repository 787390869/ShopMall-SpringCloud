package qa.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 12:21
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question {
    private int id;
    private String tableName;
    private String goodName;
    private String question;
    private String answer;
}
