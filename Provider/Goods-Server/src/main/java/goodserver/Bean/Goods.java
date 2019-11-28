package goodserver.Bean;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
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
@TableName
public class Goods {

    @TableId(value = "Id")
    private int id;

    @TableField(value = "Name")
    private String name;

    @TableField(value = "Price")
    private String price;

    @TableField(value = "imageUrl")
    private String imageUrl;

    @TableField(value = "image")
    private String image;

    @TableField(value = "imageName")
    private String imageName;
}
