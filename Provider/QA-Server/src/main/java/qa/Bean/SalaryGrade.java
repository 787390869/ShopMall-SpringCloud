package qa.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/30 11:05
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SalaryGrade {

    private Integer grade;

    private Float lowSalary;

    private Float highSalary;


}
