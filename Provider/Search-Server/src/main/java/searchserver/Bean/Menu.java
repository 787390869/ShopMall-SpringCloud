package searchserver.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.elasticsearch.annotations.Document;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/7 23:38
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Document(indexName = "air", type = "menu")
public class Menu {

    private int id;

    private String name;

    private String pinyin;

}
