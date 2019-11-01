package userserver.Controll;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 张自强
 */
@Controller
public class Html {
    @RequestMapping("login")
    public String Login() {
        return "Login";
    }
}
