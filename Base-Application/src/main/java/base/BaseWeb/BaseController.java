package base.BaseWeb;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-19 10:22
 **/
public class BaseController {

    protected DateFormat sdf = new SimpleDateFormat("MMddHHmmss");

    public Logger log = LoggerFactory.getLogger(this.getClass());

    /** 获取用户名 */
    protected String getUserName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            return oAuth2Authentication.getName();
        }
        return "未登录";
    }

    /** 获取用户角色与权限 */
    protected List<String> getUserAuthorization() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        List<String> authorization = new ArrayList<>();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            authorization =oAuth2Authentication.getAuthorities().stream().map(a -> a.getAuthority()
                    .replaceAll("ROLE_", "")).collect(Collectors.toList());
            return authorization;
        }
        authorization.add("用户未授权");
        return authorization;
    }

    /** 获取用户域名 */
    protected String getUserDomain() {
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if(principal instanceof OAuth2Authentication) {
            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) principal;
            JSONObject authorizationInfo = JSONObject.parseObject(JSONArray.toJSONString(oAuth2Authentication.getDetails()));
            return authorizationInfo.getString("remoteAddress");
        }
        return "用户未授权";
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
}

