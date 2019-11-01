package userserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

/**
 * @author 张自强
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String userid;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "nickname")
    private String nickname;
    @Column(name = "tel")
    private String telphoneNumber;
    @Column(name = "address")
    private String address;
    @Column(name = "sex")
    private String sex;
    @Column(name = "post")
    private String post;
    @Column(name = "email")
    private String email;
}
