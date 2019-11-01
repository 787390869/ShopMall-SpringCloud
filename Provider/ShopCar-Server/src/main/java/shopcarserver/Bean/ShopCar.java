package shopcarserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:27
 **/
@Entity
@Table(name = "shopcars")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ShopCar {

    @Id
    private int id;

    @Column(name = "nickname")
    private String nickname;

    @Column(name = "tablename")
    private String tablename;

    @Column(name = "goodid")
    private int goodid;

    @Column(name = "name")
    private String goodname;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "price")
    private String price;

    @Column(name = "shopcount")
    private int count;

}
