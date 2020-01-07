package base.BaseUtils;

import org.springframework.beans.BeanUtils;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/2 9:27
 **/
public class LogUtil {
    public String logUtil(Object object1, Object object2, Class className, String keyWord){
        String str = null;
        try{
            if(object1 != null && object2 != null) {
                str = "将["+ keyWord +"]的 ";
                    Object obj1 = className.newInstance();
                    Object obj2 = className.newInstance();
                    BeanUtils.copyProperties(object1,obj1);
                    BeanUtils.copyProperties(object2,obj2);
                    Field[] fields = obj1.getClass().getDeclaredFields();
                    int i = 1;
                    for(Field field: fields){
                        if("serialVersionUID".equals(field.getName())){
                            continue;
                        }
                        PropertyDescriptor pd = new PropertyDescriptor(field.getName(), obj1.getClass());
                        Method getMethod = pd.getReadMethod();
                        Object o1 = getMethod.invoke(obj1);
                        Object o2 = getMethod.invoke(obj2);
                        if(o1 == null|| o2 == null){
                            continue;
                        }
                        if(!o1.toString().equals(o2.toString()) && !o1.toString().contains("@") && !o2.toString().contains("@")){
                            if(i!=1){
                                str += " ; ";
                            }
                            str += field.getName()+":"+o1+"-->"+o2;
                            i++;
                        }
                    }
                } else {
                    throw new Exception("传入的对象不能为空!");
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        return str;
    }
}
