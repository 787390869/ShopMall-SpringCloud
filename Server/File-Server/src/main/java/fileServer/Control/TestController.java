package fileServer.Control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-05 14:57
 **/
@Controller
public class TestController {
    @RequestMapping("test")
    public String test() {
        return "test";
    }
}

