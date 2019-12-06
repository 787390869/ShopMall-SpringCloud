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
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-02 14:48
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@TableName(value = "comment")
public class Comment {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "content")
    private String content;

    @TableField(value = "table_name")
    private String tableName;

    @TableField(value = "good_id")
    private int goodId;

    @TableField("nickname")
    private String nickname;

    @TableField(value = "star")
    private int star;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField("createTime")
    private Date createTime;

    @TableField(exist = false)
    private List<Reply> replies;
}

