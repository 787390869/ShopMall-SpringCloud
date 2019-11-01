package userserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/10 21:41
 **/
@Data
@Entity
@Table(name = "user_role")
@NoArgsConstructor
@AllArgsConstructor
public class UserRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "user_id")
    int userId;

    @Column(name = "role_id")
    int roleId;
}
