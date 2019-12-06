package fileServer.Config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-06 16:12
 **/

@Component
@ConfigurationProperties(prefix = "folders")
public class Folders {

    private List<String> name = new ArrayList<>();

    public List<String> getName() {
        return name;
    }

    public void setName(List<String> name) {
        this.name = name;
    }
}

