package Beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/7 23:38
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menu {

    private int id;

    private String name;

    private String pinyin;

}
