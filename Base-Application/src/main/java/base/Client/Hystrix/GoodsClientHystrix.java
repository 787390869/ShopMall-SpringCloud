package base.Client.Hystrix;

import base.BaseWeb.ResultData;
import base.Beans.Goods;
import base.Client.Goods.GoodsClient;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-06 17:39
 **/
public class GoodsClientHystrix implements GoodsClient {

    @Override
    public ResultData<String> getPrice(String table, int id) {
        return new ResultData<>("-1");
    }

    @Override
    public ResultData<Goods> getOneGoods(int id, String goodname) {
        return null;
    }

}

