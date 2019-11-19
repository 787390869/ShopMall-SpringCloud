package Beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:20
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question {

    private int id;

    private String tableName;

    private String question;

    private String answer;
}

