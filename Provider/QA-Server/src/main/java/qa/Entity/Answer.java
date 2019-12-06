package qa.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 14:45
 **/
@TableName(value = "answer")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Answer {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "question_id")
    private Long questionId;

    @TableField(value = "content")
    private String content;

    @TableField(value = "nickname")
    private String nickname;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "createTime")
    private Date createTime;

}

