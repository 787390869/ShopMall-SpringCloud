package BaseWeb;

import ch.qos.logback.classic.Logger;
import org.apache.commons.codec.binary.Base64;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

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

}

