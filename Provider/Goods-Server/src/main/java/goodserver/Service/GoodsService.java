package goodserver.Service;

import BaseWeb.BaseService;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import goodserver.Bean.Goods;
import goodserver.Dao.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
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
                .findList(tableName, orderWord, order, pageNum*pageSize, (pageNum +1) * pageSize));
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

}

