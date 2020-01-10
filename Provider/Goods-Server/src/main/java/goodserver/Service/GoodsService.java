package goodserver.Service;
import base.BaseWeb.BaseService;
import base.BaseWeb.ResultData;
import base.Redis.RedisLock;
import base.Redis.RedisService;
import com.alibaba.fastjson.JSONObject;
import goodserver.Bean.Goods;
import goodserver.Dao.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Optional;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-27 10:04
 **/
@Service
public class GoodsService extends BaseService {

    @Autowired
    private GoodsMapper goodsMapper;

    /** 功能描述: 限制查询商品数据
      * @Param: [goodName, number]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/27 10:46
      */
    public ResultData<JSONObject> findAll(String searchInfo) {
        JSONObject searchObj = JSONObject.parseObject(searchInfo);
        String tableName1 = toPinyin(Optional.ofNullable(searchObj.getString("goodname1")).orElse(""));
        String tableName2 = toPinyin(Optional.ofNullable(searchObj.getString("goodname2")).orElse(""));
        String tableName3 = toPinyin(Optional.ofNullable(searchObj.getString("goodname3")).orElse(""));
        String tableName4 = toPinyin(Optional.ofNullable(searchObj.getString("goodname4")).orElse(""));
        int number = Optional.ofNullable(searchObj.getInteger("number")).orElse(1);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("goods1", goodsMapper.findAll(tableName1, number));
        jsonObject.put("goods2", goodsMapper.findAll(tableName2, number));
        jsonObject.put("goods3", goodsMapper.findAll(tableName3, number));
        jsonObject.put("goods4", goodsMapper.findAll(tableName4, number));
        return new ResultData<>(jsonObject);
    }

    /** 功能描述: 商品列表数据
      * @Param: [goodName, orderWord, order, pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/27 10:49
      */
    public ResultData<JSONObject> findList(String goodName, String orderWord, String order, int pageNum, int pageSize) {
        String tableName = toPinyin(goodName);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("goods", goodsMapper
                .findList(tableName, orderWord, order, (pageNum - 1)*pageSize, pageNum * pageSize));
        jsonObject.put("count", goodsMapper.count(tableName));
        ResultData<JSONObject> resultData = new ResultData(1, "查询成功", jsonObject);
        return resultData;
    }

    /** 功能描述: 查询某一件商品详情
      * @Param: [goodName, id]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/27 11:38
      */
    public ResultData<Goods> findByIdAndGoodsname(int id, String goodName) {
        String tableName = toPinyin(goodName);
        return new ResultData<>(goodsMapper.findByIdAndGoodsname(id, tableName));
    }

    /** 功能描述: 更新商品数据
      * @Param: [goodname: 商品名称, page: 页数(每页30只)]
      * @Author: ZhangZiQiang
      * @Date: 2019/12/18 16:27
      */
    public ResultData<String> updateGoodsPy(String goodname, int page) throws Exception{
        page = page + 1;
        String pyPath = ClassUtils.getDefaultClassLoader().getResource("").getPath() + "static/Outer.py";
        if (pyPath.indexOf("/") == 0) {
            pyPath = pyPath.substring(pyPath.indexOf("/") + 1);
        }
        String[] arguments = new String[] {"python", pyPath, goodname, Integer.toString(page)};
        int result = 1;
        try {
            Process process = Runtime.getRuntime().exec(arguments);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream(), "GB2312"));
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            in.close();
            result = process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResultData<>(result == 0 ? "更新成功" : "更新失败");
    }

    /** 功能描述: 获取商品单价
      * @Param: [table, id]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/6 17:38
      */
    public ResultData<String> getPrice(String table, int id) {
        return new ResultData<>(goodsMapper.findByIdAndGoodsname(id, toPinyin(table)).getPrice());
    }

    /** 功能描述: 查询所有商品
      * @Param: []
      * @Author: ZhangZiQiang
      * @Date: 2020/1/10 14:41
      */
    public ResultData<List<String>> allGoods() {
        return new ResultData<List<String>>(goodsMapper.allGoods());
    }

}

