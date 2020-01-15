package shopcarserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-14 09:38
 **/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "t_order_param")
public class OrderParam {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "expiration_time")
    private int expirationTime;

    @Column(name = "max_audit_price")
    private String maxAuditPrice;

    @Column(name = "redis_order_key_name")
    private String redisOrderKeyName;

    @Column(name = "unsub_percent")
    private String unsubPercent;

}

