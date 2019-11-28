package BaseWeb;

import ch.qos.logback.classic.Logger;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.apache.commons.codec.binary.Base64;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.util.CollectionUtils;

import java.beans.PropertyDescriptor;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-19 11:30
 **/
public class BaseService {

    protected final Logger log = (Logger) LoggerFactory.getLogger(this.getClass());
    protected DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /** 获取用户名 */
    protected String getUserName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            return oAuth2Authentication.getName();
        }
        return "未登录";
    }

    /** Base64 加密 */
    public String encodeBase64(String srcStr) {
        String result = "";
        try {
            result = new String(Base64.encodeBase64(srcStr.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /** Base64 解密  */
    public String decodeBase64(String destStr) {
        String result = "";
        try {
            result = new String(Base64.decodeBase64(destStr.getBytes()), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /** Md5加密 */
    public String encodeMd5(String srcStr) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = md.digest(srcStr.getBytes("utf-8"));
            return toHex(bytes);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static String toHex(byte[] bytes) {

        final char[] HEX_DIGITS = "0123456789ABCDEF".toCharArray();
        StringBuilder ret = new StringBuilder(bytes.length * 2);
        for (int i = 0; i < bytes.length; i++) {
            ret.append(HEX_DIGITS[(bytes[i] >> 4) & 0x0f]);
            ret.append(HEX_DIGITS[bytes[i] & 0x0f]);
        }
        return ret.toString();
    }

    /**
     * 汉字转拼音
     *@Author ZhangZiQiang
     *@Param [chinese]
     *@Date 2019/9/23 15:03
     */
    public static String toPinyin(String chinese){
        String pinyinStr = "";
        char[] newChar = chinese.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for (int i = 0; i < newChar.length; i++) {
            if (newChar[i] > 128) {
                try {
                    pinyinStr += PinyinHelper.toHanyuPinyinStringArray(newChar[i], defaultFormat)[0];
                } catch (BadHanyuPinyinOutputFormatCombination e) {
                    e.printStackTrace();
                }
            }else{
                pinyinStr += newChar[i];
            }
        }
        return pinyinStr.replace(":","");
    }

    /** 日志生成 */
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

    /** 转换实体类 */
    public static <T> List<T> castEntity(List<Object[]> list, Class<T> clazz) throws Exception {
        List<T> returnList = new ArrayList<T>();
        if(CollectionUtils.isEmpty(list)){
            return returnList;
        }
        Object[] co = list.get(0);
        Class[] c2 = new Class[co.length];
        //确定构造方法
        for (int i = 0; i < co.length; i++) {
            if(co[i]!=null){
                c2[i] = co[i].getClass();
            }else {
                c2[i]=String.class;
            }
        }
        for (Object[] o : list) {
            Constructor<T> constructor = clazz.getConstructor(c2);
            returnList.add(constructor.newInstance(o));
        }
        return returnList;
    }
}

