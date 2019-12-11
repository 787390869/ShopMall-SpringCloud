package fileServer.Utils;

import BaseWeb.ResultData;
import fileServer.Config.Folders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-09 17:55
 **/
@Component(value = "fileUtil")
public class FileUtils {

    @Autowired
    private Folders folders;

    /** 功能描述: 文件分组
     * @Param: [pattern]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/9 9:30
     */
    public ResultData<List<String>> groupFiles(String pattern) {
        ResultData<List<String>> resultData = new ResultData<>(ResultData.RESULT_CODE_FAIL, ResultData.RESULT_MESSAGE_FAIL);
        List<String> deleteFiles = new ArrayList<>();
        int mNumber = 0;
        for (String name: this.folders.getName()) {
            File folder = new File(name);
            if (!folder.exists()) {
                resultData.setMessage("不存在这样的目录");
                return resultData;
            }

            File[] files = this.searchFile(folder, pattern);
            for (File f: files) {
                if (f.getAbsolutePath().indexOf(name) == 0) {
                    String path = f.getAbsolutePath().substring(name.length());
                    path = "group1/M0" + mNumber + path;
                    deleteFiles.add(path);
                } else {
                    deleteFiles.add(f.getAbsolutePath());
                }
            }
            mNumber++;
        }
        resultData.setData(deleteFiles);
        return resultData;
    }

    /** 功能描述: 判断文件名是否包含中文
     * @Param: [str]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/9 16:43
     */
    public boolean isContainChinese(String str) {
        Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
        Matcher m = p.matcher(str);
        if (m.find()) {
            return true;
        }
        return false;
    }

    /** 功能描述: 检查文件是否是图片类型
     * @Param: [ext] 后缀
     * @Author: ZhangZiQiang
     * @Date: 2019/12/5 14:47
     */
    public boolean checkFileType(String ext) {
        String[] types = new String[] {
                "jpg", "png", "bmp", "gif", "jpeg", "tiff", "psd", "swf",
                "svg", "pcx", "dxf", "wmf", "emf", "lic", "eps", "tga"
        };
        List<String> typeList = Arrays.asList(types);
        if (typeList.contains(ext.toLowerCase())) {
            return true;
        }
        return false;
    }

    /** 功能描述: 检查文件路径
     * @Param: [fileUrl]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/9 15:49
     */
    public boolean checkFileUrl(String fileUrl) {
        boolean containGroup = fileUrl.indexOf("group") == 0;
        boolean charFlag = charCounts(fileUrl, '/') == 4;
        boolean extFlag = fileUrl.lastIndexOf(".") > 0;
        boolean extNameFlag = false;
        if (extFlag) {
            extNameFlag = !fileUrl.substring(fileUrl.lastIndexOf(".") + 1, fileUrl.length()).equals("");
        }
        return containGroup && charFlag && extFlag && extNameFlag;
    }

    /** 功能描述: 某个字符出现次数
     * @Param: [str, character]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/9 15:47
     */
    public int charCounts(String str, char character) {
        int count = 0;
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (c == character) {
                count ++ ;
            }
        }
        return count;
    }

    /** 功能描述: 搜索匹配key的所有文件名称集合
     * @Param: [folder: 文件夹路径, key: 关键字]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/6 15:40
     */
    public File[] searchFile(File folder, String key) {
        File[] subFolders = folder.listFiles(p -> {
            if (p.isDirectory() || (p.isFile() && p.getName().toLowerCase().contains(key.toLowerCase()))) {
                return true;
            }
            return false;
        });

        List<File> result = new ArrayList<>();
        for (File f: subFolders) {
            if(f.isFile()) {
                result.add(f);
            } else {
                File[] foldResult = searchFile(f, key);
                for (File fr: foldResult) {
                    result.add(fr);
                }
            }
        }

        return result.toArray(new File[result.size()]);
    }

}

