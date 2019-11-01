package userserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/11 9:53
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "yanzhengma")
public class Code {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "imageurl")
    private String imageUrl;

    @Column(name = "right")
    private String right;
}
