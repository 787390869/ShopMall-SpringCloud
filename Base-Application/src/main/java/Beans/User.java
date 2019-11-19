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
public class User {
    private String userid;
    private String username;
    private String password;
    private String nickname;
    private String telphoneNumber;
    private String address;
    private String sex;
    private String post;
    private String email;
}
