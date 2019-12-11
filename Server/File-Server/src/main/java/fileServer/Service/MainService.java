package fileServer.Service;

import BaseWeb.BaseService;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import com.github.tobato.fastdfs.domain.conn.FdfsWebServer;
import com.github.tobato.fastdfs.domain.fdfs.MetaData;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.domain.fdfs.ThumbImageConfig;
import com.github.tobato.fastdfs.domain.proto.storage.DownloadByteArray;
import com.github.tobato.fastdfs.exception.FdfsServerException;
import com.github.tobato.fastdfs.exception.FdfsUnsupportStorePathException;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import fileServer.Config.Folders;
import fileServer.Scheduler.TimerTask;
import fileServer.Utils.FileUtils;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.scheduling.config.ScheduledTask;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.net.Socket;
import java.net.URL;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-12-04 12:47
 **/
@Service
public class MainService extends BaseService {

    @Value("${deleteFileKey}")
    private String deleteFileKey;

    @Value("${fdfs.thumb-image.width}")
    private int width;

    @Value("${fdfs.thumb-image.height}")
    private int height;

    @Value("${fdfs.thumb-image.format}")
    private String format;

    @Autowired
    private FastFileStorageClient storageClient;

    @Autowired
    private ThumbImageConfig thumbImageConfig;

    @Autowired
    private FdfsWebServer fdfsWebServer;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private FileUtils fileUtil;

    /** 功能描述: 上传文件
      * @Param: [myfile]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/4 13:50
      */
    public ResultData<JSONObject> upload(MultipartFile myfile) throws Exception {
        JSONObject jsonObject = new JSONObject();
        Set<MetaData> metaData = new HashSet<>();
        metaData.add(new MetaData("Date", sdf.format(new Date())));
        String originName = myfile.getOriginalFilename(); // 源文件名
        String extName = originName.substring(originName.lastIndexOf(".") + 1); // 拓展名
        StorePath storePath = this.storageClient.uploadFile(myfile.getInputStream(), myfile.getSize(), extName, metaData);
        jsonObject.put("path", storePath.getFullPath());
        jsonObject.put("webPath", fdfsWebServer.getWebServerUrl() + storePath.getFullPath());
        jsonObject.put("md5", encodeMd5(storePath.getFullPath()));
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 自定义上传并生成缩略图
      * @Param: [file, info]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/4 17:43
      */
    public ResultData<JSONObject> uploadWithThumb(MultipartFile file, String info) throws Exception{
        JSONObject jsonObject = new JSONObject();
        String originName = file.getOriginalFilename();
        String extName = originName.substring(originName.lastIndexOf(".") + 1);
        StorePath storePath;
        if (!fileUtil.checkFileType(extName)) {
            jsonObject.put("error", "该文件不是图片");
            return new ResultData<>(ResultData.RESULT_CODE_FAIL,ResultData.RESULT_MESSAGE_FAIL, jsonObject);
        }
        if (info == null) {
            storePath = this.storageClient.uploadImageAndCrtThumbImage(file.getInputStream(), file.getSize(), extName, null);
            jsonObject.put("path", storePath.getFullPath());
            jsonObject.put("webPath", this.fdfsWebServer.getWebServerUrl() +  storePath.getFullPath());
            jsonObject.put("md5", encodeMd5(storePath.getFullPath()));
            String thumbPath = storePath.getFullPath().substring(0, storePath.getFullPath().lastIndexOf(".")) + "_" + this.width + "x" + this.width +
                    storePath.getFullPath().substring(storePath.getFullPath().lastIndexOf("."));
            jsonObject.put("thumbPath", thumbPath);
            jsonObject.put("thumbWebPath", fdfsWebServer.getWebServerUrl() + thumbPath);
            jsonObject.put("thumbMd5", storePath.getFullPath());
        } else {
            JSONObject infoObj = JSONObject.parseObject(info);
            int width = Optional.ofNullable(infoObj.getInteger("width")).orElse(this.width);
            int height = Optional.ofNullable(infoObj.getInteger("height")).orElse(this.height);
            String format = Optional.ofNullable(infoObj.getString("format")).orElse(this.format);

            storePath = this.storageClient.uploadFile(file.getInputStream(), file.getSize(), extName, null);
            String sourceUrl = fdfsWebServer.getWebServerUrl() + storePath.getFullPath();
            jsonObject.put("path", storePath.getFullPath());
            jsonObject.put("webPath", sourceUrl);
            jsonObject.put("md5", encodeMd5(storePath.getFullPath()));

            BufferedImage image = Thumbnails.of(new URL(sourceUrl)).size(width, height).keepAspectRatio(false).asBufferedImage();
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            ImageIO.write(image, format , out);
            ByteArrayInputStream inputStream = new ByteArrayInputStream(out.toByteArray());

            storePath = this.storageClient.uploadFile(inputStream, out.size() , format, null);
            out.close();

            jsonObject.put("thumbPath", storePath.getFullPath());
            jsonObject.put("thumbWebPath", fdfsWebServer.getWebServerUrl() +  storePath.getFullPath());
            jsonObject.put("thumbMd5", encodeMd5(storePath.getFullPath()));
        }
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 上传多个文件
      * @Param: [files]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/5 15:14
      */
    public ResultData<List<String>> uploadMany(List<MultipartFile> files) {
        List<String> paths = new ArrayList<>();
        files.stream().forEach(f -> {
            String originName = f.getOriginalFilename();
            String extName = originName.substring(originName.lastIndexOf(".") + 1);
            try {
                StorePath storePath = this.storageClient.uploadFile(f.getInputStream(), f.getSize(), extName, null);
                paths.add(storePath.getFullPath());
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
        return new ResultData<List<String>>(paths);
    }

    /** 功能描述: 图片地址 Md5加密
      * @Param: [url]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/5 14:49
      */
    public ResultData<String> fileMd5(String url) {
        return new ResultData<>(encodeMd5(url));
    }

    /** 功能描述: 删除单个文件
      * @Param: [fileUrl: 文件]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/4 13:59
      */
    public ResultData<String> deleteOneFile(String fileUrl) {
        ResultData<String> resultData = new ResultData<>(ResultData.RESULT_CODE_FAIL,ResultData.RESULT_MESSAGE_FAIL);
        if(StringUtils.isEmpty(fileUrl)) {
            resultData.setMessage("图片地址为空");
            return resultData;
        }
        try{
            StorePath storePath = StorePath.parseFromUrl(fileUrl);
            storageClient.deleteFile(storePath.getGroup(), storePath.getPath());
            resultData.setMessage(ResultData.RESULT_MESSAGE_SUCCESS);
        } catch (FdfsUnsupportStorePathException e) {
            resultData.setMessage("图片地址不合法");
        }catch (FdfsServerException exc) {
            resultData.setMessage("文件不存在");
        } catch (Exception ex) {
            resultData.setMessage("文件服务器错误");
        } finally {
            return resultData;
        }
    }

    /** 功能描述: 删除多个文件
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2019/12/6 15:52
      */
    public ResultData<List<String>> deleteMany(String pattern) {
        ResultData<List<String>> resultData = fileUtil.groupFiles(pattern);
        if (resultData.getData().size() != 0) {
            List<String> deleteFiles = resultData.getData();
            deleteFiles.stream().forEach(d -> {
                // this.deleteOneFile(d);
            });
            resultData.setData(deleteFiles);
            return resultData;
        }
        return resultData;
    }

    /** 功能描述: 搜索文件名
     * @Param: [pattern: 通配符]
     * @Author: ZhangZiQiang
     * @Date: 2019/12/6 17:38
     */
    public ResultData<JSONObject> search(String pattern) {
        ResultData<List<String>> resultData = fileUtil.groupFiles(pattern);
        if (resultData.getData().size() != 0) {
            JSONObject jsonObject  = new JSONObject();
            List<String> deleteFiles = resultData.getData();
            jsonObject.put("files", deleteFiles);
            jsonObject.put("count", deleteFiles.size());
            return new ResultData<>(jsonObject);
        }
        return new ResultData<>(resultData.getCode(), resultData.getMessage());
    }

    /** 功能描述: 全景图上传图片
      * @Param: [file]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/9 16:55
      */
    public ResultData<JSONObject> vrUpload(MultipartFile file) throws Exception{
        String fileName = file.getOriginalFilename();
        if (fileUtil.isContainChinese(fileName)) {
            int index = fileName.indexOf('.');
            if (-1 != index) {
                fileName = fileName.substring(index + 1);
            } else {
                fileName = "";
            }
        }
        String extName = fileName.substring(fileName.lastIndexOf(".") + 1);
        StorePath storePath = this.storageClient.uploadFile(file.getInputStream(), file.getSize(), extName, null);
        String redisKey = fileName.substring(0, fileName.lastIndexOf("_"));
        stringRedisTemplate.opsForSet().add(deleteFileKey, redisKey);
        stringRedisTemplate.opsForSet().add(redisKey, storePath.getFullPath());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("path", storePath.getFullPath());
        jsonObject.put("webPath", fdfsWebServer.getWebServerUrl() + storePath.getFullPath());
        jsonObject.put("md5", this.encodeMd5(storePath.getFullPath()));
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 下载文件
      * @Param: [fileUrl]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/9 15:17
      */
    public byte[] downloadFile(String fileUrl) throws IOException {
        String group = fileUrl.substring(0, fileUrl.indexOf("/"));
        String path = fileUrl.substring(fileUrl.indexOf("/") + 1);
        DownloadByteArray byteArray = new DownloadByteArray();
        byte[] bytes = storageClient.downloadFile(group, path, byteArray);
        return bytes;
    }

}

