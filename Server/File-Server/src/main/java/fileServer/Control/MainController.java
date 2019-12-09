package fileServer.Control;

import BaseWeb.BaseController;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import fileServer.Service.MainService;
import fileServer.Utils.FileUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.HandlerMapping;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-04 12:45
 **/
@Api(description = "文件服务器接口")
@RestController
public class MainController extends BaseController {

    @Autowired
    private MainService mainService;

    @Autowired
    private FileUtils fileUtil;

    @ApiOperation(value = "文件上传", notes = "上传单个文件")
    @ApiImplicitParams(value = {
            @ApiImplicitParam(name = "file", value = "MultipartFile源文件", required = true, dataType = "MultipartFile")
    })
    @PostMapping("upload")
    public ResultData<JSONObject> upload(@RequestParam("file")MultipartFile file) throws Exception{
        return mainService.upload(file);
    }

    /** extraInfo: {'width':'', 'height':'', 'format':''} */
    /** 没有extraInfo 则默认配置width, height 与当前文件后缀缩略 */
    /** 有extraInfo 若width, height, format 有就按字段缩略, 没有就按配置的参数缩略 */
    @ApiOperation(value = "上传文件并生成缩略图")
    @ApiImplicitParams(value = {
            @ApiImplicitParam(name = "file", value = "MultipartFile源文件", required = true, dataType = "MultipartFile"),
            @ApiImplicitParam(name = "extraInfo", value = "额外信息: {'width': '长度', 'height': '宽度', 'format': '格式'}", required = false, dataType = "JSON")
    })
    @PreAuthorize("hasAnyAuthority('Permission_Handle') or hasAnyAuthority('ROLE_Vip')")
    @PostMapping("uploadWithThumb")
    public ResultData<JSONObject> uploadWithThumb(@RequestParam("file")MultipartFile file,
                                                  @RequestParam(value = "extraInfo", required = false) String info) throws Exception {
        return mainService.uploadWithThumb(file, info);
    }

    @ApiOperation(value = "上传文件夹", notes = "本地 Ip:Port/test 示例页面")
    @PreAuthorize("hasAnyAuthority('Permission_Handle')")
    @PostMapping("uploadMany")
    public ResultData<List<String>> updateMany(HttpServletRequest req) {
        MultipartHttpServletRequest params = ((MultipartHttpServletRequest) req);
        return mainService.uploadMany(params.getFiles("file"));
    }

    @ApiOperation(value = "获取文件Md5")
    @ApiImplicitParam(value = "fileUrl", name = "文件地址(请写在Url后面)", required = true, dataType = "String")
    @PostMapping("Md5/{fileUrl}/**")
    public ResultData<String> fileMd5(@PathVariable("fileUrl")String url, HttpServletRequest req) {
        if (!fileUtil.checkFileUrl(url)) {
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, ResultData.RESULT_MESSAGE_FAIL, "文件名不合法");
        }
        return mainService.fileMd5(url + "/" + extractPathFromPattern(req));
    }

    @ApiOperation("删除单个文件")
    @ApiImplicitParam(value = "fileUrl", name = "文件地址(请写在Url后面)")
    @PreAuthorize("hasAnyAuthority('ROLE_Vip') or hasAnyAuthority('Permission_Handle')")
    @PostMapping("delete/{fileUrl}/**")
    public ResultData<String> delete(@PathVariable("fileUrl")String url, HttpServletRequest req) {
        if (!fileUtil.checkFileUrl(url)) {
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, ResultData.RESULT_MESSAGE_FAIL, "文件名不合法");
        }
        return mainService.deleteOneFile(url + "/" + extractPathFromPattern(req));
    }

    @ApiOperation("删除多个文件")
    @ApiImplicitParam(value = "pattern", name = "通配符(请写在Url后面)", required = true, dataType = "String")
    @PreAuthorize("hasAnyAuthority('ROLE_Admin')")
    @PostMapping("deleteMany/{pattern}")
    public ResultData<List<String>> deleteMany(@PathVariable("pattern")String pattern) {
        return mainService.deleteMany(pattern);
    }

    @ApiOperation("搜索文件路径")
    @ApiImplicitParam(value = "pattern", name = "通配符(请写在Url后面)", required = true, dataType = "String")
    @PreAuthorize("hasAnyAuthority('Permission_Handle')")
    @PostMapping("search")
    public ResultData<JSONObject> search(@RequestParam("pattern")String pattern) {
        return this.mainService.search(pattern);
    }

    @ApiOperation("下载文件")
    @ApiImplicitParam(value = "fileUrl", name = "文件地址", required = true, dataType = "String")
    @GetMapping("download")
    public ResultData<String> download(@RequestParam("fileUrl") String fileUrl, HttpServletResponse resp) throws IOException {
        if (!fileUtil.checkFileUrl(fileUrl)) {
            return new ResultData<>(ResultData.RESULT_CODE_FAIL, ResultData.RESULT_MESSAGE_FAIL, "文件名不合法");
        }
        String ext = fileUrl.substring(fileUrl.lastIndexOf("."));
        String fileName = fileUrl.substring(fileUrl.lastIndexOf("/") + 1, fileUrl.lastIndexOf(".")).substring(0,10);
        byte[] bytes = mainService.downloadFile(fileUrl);
        resp.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName + ext, "UTF-8"));
        resp.setCharacterEncoding("UTF-8");
        ServletOutputStream out = null;
        try {
            out = resp.getOutputStream();
            out.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            out.flush();
            out.close();
        }
        return new ResultData<>();
    }

    @ApiOperation(value = "全景图上传图片")
    @ApiImplicitParam(value = "file", name = "源文件", required = true, dataType = "MultipartFile")
    @PostMapping("vrUpload")
    public ResultData<JSONObject> vrUpload(@RequestParam("file") MultipartFile file) throws Exception{
        return mainService.vrUpload(file);
    }

    /** PathVariable 参数带斜杠处理 */
    private String extractPathFromPattern(final HttpServletRequest req) {
        String path = (String) req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        String bestMatchPattern = (String) req.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
        return new AntPathMatcher().extractPathWithinPattern(bestMatchPattern, path);
    }

}

