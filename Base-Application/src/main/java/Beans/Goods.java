package Beans;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author 张自强
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Goods {

    private int id;

    private String name;

    private String price;

    private String imageUrl;

    private String image;

    private String imageName;
}
