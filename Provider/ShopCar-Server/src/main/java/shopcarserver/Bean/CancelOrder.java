package shopcarserver.Bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-07 13:52
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "cancel_order")
public class CancelOrder implements Serializable {

    /** 退订单已创建 */
    public final static int CANCEL_ORDER_CREATED = 1;

    /** 退订单审核中 */
    public final static int CANCEL_ORDER_AUDIT = 2;

    /** 退订单已退订 */
    public final static int CANCEL_ORDER_COMPLETED = 3;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "order_id")
    private Long orderId;

    @Column(name = "status")
    private int status;

    @Column(name = "create_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @Column(name = "creator")
    private String creator;

    @Column(name = "update_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updateTime;

    @Column(name = "updator")
    private String updator;

    @OneToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "order_id", referencedColumnName = "id", insertable = false, updatable = false, table = "cancel_order")
    private Order order;

}

