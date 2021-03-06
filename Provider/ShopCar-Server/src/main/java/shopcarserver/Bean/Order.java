package shopcarserver.Bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;
import org.springframework.validation.annotation.Validated;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:06
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "t_order")
public class Order implements Serializable {

    /** 待支付 */
    public final static int ORDER_UNPAID = 0;

    /** 已支付 */
    public final static int ORDER_PAID = 1;

    /** 已取消 */
    public final static int ORDER_CANCELED = 2;

    /** 支付超时 */
    public final static int ORDER_OVERTIME = 3;

    /** 支付异常 */
    public final static int ORDER_EXCEPTION = 8;

    /** 支付宝平台 */
    public final static int ORDER_PLATFORM_ZHIFUBAO = 1;

    /** 微信平台 */
    public final static int ORDER_PLATFORM_WEIXIN = 2;

    /** DEBUG */
    public final static int ORDER_PLATFORM_DEBUG = 3;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "status")
    private int status;

    @Column(name = "remark")
    private String remark;

    @Transient
    private String orderType;

    @Column(name = "create_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @Column(name = "creator")
    private String creator;

    @Column(name = "prepaid")
    private String prepaid;

    @Column(name = "paid")
    private String paid;

    @Column(name = "platform")
    private int platform;

    @OneToMany(cascade = CascadeType.MERGE, mappedBy = "order")
    private List<OrderGoods> orderGoods;

    @OneToOne(cascade = CascadeType.MERGE, mappedBy = "order")
    @JsonIgnore
    private CancelOrder cancelOrder;

}

