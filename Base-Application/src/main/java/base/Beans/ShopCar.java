package base.Beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:27
 **/
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ShopCar {

    private int id;

    private String nickname;

    private String tablename;

    private int goodid;

    private String goodname;

    private String imageUrl;

    private String price;

    private String count;
}
