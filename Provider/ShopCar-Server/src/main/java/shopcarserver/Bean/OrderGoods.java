package shopcarserver.Bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-15 09:28
 **/
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "t_order_goods")
public class OrderGoods {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "order_id")
    private Long orderId;

    @Column(name = "tb_name")
    private String tbName;

    @Column(name = "goods_id")
    private int goodsId;

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "order_id", referencedColumnName = "id", insertable = false, updatable = false)
    @JsonIgnore
    private Order order;

}

