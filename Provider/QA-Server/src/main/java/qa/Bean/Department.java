package qa.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 17:10
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Department {
    private int deptId;
    private String deptName;
    private String deptNo;
    private String location;
}
