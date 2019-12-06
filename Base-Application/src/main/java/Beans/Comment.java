package Beans;

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
public class Comment {

    private Long id;

    private String content;

    private String tableName;

    private int goodId;

    private String nickname;

    private int star;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    private List<Reply> replies;

}

