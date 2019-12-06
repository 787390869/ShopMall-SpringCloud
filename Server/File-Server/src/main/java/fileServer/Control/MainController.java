package fileServer.Control;

import BaseWeb.BaseController;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import fileServer.Service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.HandlerMapping;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-04 12:45
 **/
@RestController
public class MainController extends BaseController {

    @Autowired
    private MainService mainService;

    @PostMapping("upload")
    public ResultData<JSONObject> upload(@RequestParam("file")MultipartFile file) throws Exception{
        return mainService.upload(file);
    }

    /** extraInfo: {'width':'', 'height':'', 'format':''} */
    /** 没有extraInfo 则默认配置width, height 与当前文件后缀缩略 */
    /** 有extraInfo 若width, height, format 有就按字段缩略, 没有就按配置的参数缩略 */
    @PreAuthorize("hasAnyAuthority('Permission_Handle') or hasAnyAuthority('ROLE_Vip')")
    @PostMapping("uploadWithThumb")
    public ResultData<JSONObject> uploadWithThumb(@RequestParam("file")MultipartFile file,
                                                  @RequestParam(value = "extraInfo", required = false) String info) throws Exception {
        return mainService.uploadWithThumb(file, info);
    }

    @PreAuthorize("hasAnyAuthority('Permission_Handle')")
    @PostMapping("uploadMany")
    public ResultData<List<String>> updateMany(HttpServletRequest req) {
        MultipartHttpServletRequest params = ((MultipartHttpServletRequest) req);
        return mainService.uploadMany(params.getFiles("file"));
    }

    @PostMapping("Md5/{fileUrl}/**")
    public ResultData<String> fileMd5(@PathVariable("fileUrl")String url, HttpServletRequest req) {
        return mainService.fileMd5(url + "/" + extractPathFromPattern(req));
    }

    @PreAuthorize("hasAnyAuthority('ROLE_Vip') or hasAnyAuthority('Permission_Handle')")
    @PostMapping("delete/{fileUrl}/**")
    public ResultData<String> delete(@PathVariable("fileUrl")String url, HttpServletRequest req) {
        return mainService.deleteOneFile(url + "/" + extractPathFromPattern(req));
    }

    @PreAuthorize("hasAnyAuthority('ROLE_Admin')")
    @PostMapping("deleteMany/{pattern}")
    public ResultData<List<String>> deleteMany(@PathVariable("pattern")String pattern) {
        return mainService.deleteMany(pattern);
    }

    @PreAuthorize("hasAnyAuthority('Permission_Handle')")
    @PostMapping("search")
    public ResultData<JSONObject> search(@RequestParam("pattern")String pattern) {
        return this.mainService.search(pattern);
    }

    /** PathVariable 参数带斜杠处理 */
    private String extractPathFromPattern(final HttpServletRequest req) {
        String path = (String) req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        String bestMatchPattern = (String) req.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
        return new AntPathMatcher().extractPathWithinPattern(bestMatchPattern, path);
    }

}

