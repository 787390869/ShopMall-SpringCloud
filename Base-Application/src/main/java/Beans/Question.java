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
 * @Date: 2019-11-15 09:20
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Question {

    private Long id;

    private String tableName;

    private String goodId;

    private String content;

    private String nickname;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    private List<Answer> answers;
}

