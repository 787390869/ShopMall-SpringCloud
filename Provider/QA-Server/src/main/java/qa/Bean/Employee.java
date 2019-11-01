package qa.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Author ZhangZiQiang
 * @Date 2019/10/12 17:12
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {

    private Long empId;

    private String empNo;

    private String empName;

    private String job;

    private Date hideDate;

    private Float salary;

    private byte[] image;

    private Department department;
}
