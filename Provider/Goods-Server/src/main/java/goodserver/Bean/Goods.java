package goodserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author 张自强
 */
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table
public class Goods {

    @Id
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private String price;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "image")
    private String image;

    @Column(name = "imagename")
    private String imageName;
}
