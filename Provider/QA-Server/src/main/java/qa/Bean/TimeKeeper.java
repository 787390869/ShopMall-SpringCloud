package qa.Bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/30 11:08
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TimeKeeper {

    public static final char IN = 'I';
    public static final char OUT = 'O';

    private String timeKeeperId;

    private Date dateTime;

    private char inOut;

}
