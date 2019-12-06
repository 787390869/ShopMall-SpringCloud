package qa.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 09:20
 **/
@TableName(value = "question")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Question {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "tablename")
    private String tableName;

    @TableField(value = "good_id")
    private String goodId;

    @TableField(value = "content")
    private String content;

    @TableField(value = "nickname")
    private String nickname;

    @TableField(value = "createTime")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @TableField(exist = false)
    private List<Answer> answers;

}

