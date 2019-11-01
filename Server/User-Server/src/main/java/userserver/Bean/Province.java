package userserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 13:22
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "province")
public class Province {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "code")
    private String regionCode;

    @Column(name = "name")
    private String regionName;
}
