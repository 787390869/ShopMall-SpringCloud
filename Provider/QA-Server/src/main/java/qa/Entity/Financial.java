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
 * @Date: 2020-01-07 13:59
 **/
@TableName(value = "financial")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Financial {

    /** 已创建 */
    public final static int FINANCIAL_CREATED= 1;

    /** 已退还 */
    public final static int FINANCIAL_CANCELED = 2;

    /** 已完成 */
    public final static int FINANCIAL_COMPLETED = 3;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "order_id")
    private Long orderId;

    @TableField(value = "outcome")
    private Long outcome;

    @TableField(value = "income")
    private String income;

    @TableField(value = "status")
    private int status;

    @TableField(value = "create_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @TableField(value = "creator")
    private String creator;

}

