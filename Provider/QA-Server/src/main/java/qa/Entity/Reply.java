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
 * @Date: 2019-12-02 14:51
 **/
@TableName(value = "reply")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reply {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "comment_id")
    private Long commentId;

    @TableField(value = "content")
    private String content;

    @TableField(value = "nickname")
    private String nickname;

    @TableField(value = "createTime")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @TableField(value = "available")
    private int available;
}

