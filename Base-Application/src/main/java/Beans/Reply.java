package Beans;

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
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reply {

    private Long id;

    private Long commentId;

    private String content;

    private String nickname;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    private int available;
}

