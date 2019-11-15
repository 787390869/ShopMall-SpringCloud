package qa.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:20
 **/
@TableName(value = "question")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question {

    @TableId(value = "id", type = IdType.AUTO)
    private int id;

    @TableField(value = "tablename")
    private String tableName;

    @TableField(value = "goodname")
    private String question;

    @TableField(value = "answer")
    private String answer;
}

