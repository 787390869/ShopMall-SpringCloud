package shopcarserver.Client.Hystrix;

import Beans.Goods;
import org.springframework.stereotype.Component;
import shopcarserver.Client.Interface.GoodsClient;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/24 17:13
 **/
public class GoodsHystrix implements GoodsClient{

    @Override
    public Goods getOneGoods(int id, String goodname) {
        return new Goods();
    }

}
