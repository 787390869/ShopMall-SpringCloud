package shopcarserver.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shopcarserver.Bean.ShopCar;
import shopcarserver.Dao.ShopCarRepository;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:32
 **/
@Service
public class ShopCarService {

    @Autowired
    private ShopCarRepository shopCarRepository;

    /**
      * 根据昵称查询购物车数量
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Return int
      *@Date 2019/8/28 16:33
      */
    public int countOfShopcar(String nickname) {
        return shopCarRepository.countOfShopcar(nickname);
    }

    /**
      * 新增购物车
      *@Author ZhangZiQiang
      *@Param [shopCar]
      *@Date 2019/9/24 22:50
      */
    @Transactional(rollbackFor = Exception.class)
    public void addShopCar(ShopCar shopCar) throws Exception{

        ShopCar sc = shopCarRepository.findByNicknameAndGoodname(shopCar.getNickname(), shopCar.getGoodname());
        int existShopCarsConut = shopCarRepository.findCountByNickname(shopCar.getNickname());

        if ( existShopCarsConut >= 10 ) {
            throw new Exception("您购物车商品已满10件,无法加购!");
        }
        if(sc != null) {
            int totalCount = shopCarRepository.findByGoodnameAndNickname(shopCar.getGoodname(), shopCar.getNickname());
            if ( totalCount >= 5 ) {
                throw new Exception("该商品购物车中已有5件, 无法加购!");
            } else {
                sc.setCount((sc.getCount() + 1));
                shopCarRepository.save(sc);
            }
        } else {
            shopCar.setCount(1);
            shopCarRepository.save(shopCar);
        }
    }

    /**
      * 根据昵称查询所有购物车
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Date 2019/9/26 10:36
      */
    public List<ShopCar> getAllShopCars(String nickname) {
        return shopCarRepository.findByNickname(nickname);
    }

    /**
      * 删除某个商品
      *@Author ZhangZiQiang
      *@Param [nickname, goodname]
      *@Date 2019/9/26 16:03
      */
    @Transactional(rollbackFor = Exception.class)
    public void deleteOneShopCar(String nickname, String goodname) throws Exception{
        ShopCar shopCar = shopCarRepository.findByNicknameAndGoodname(nickname, goodname);
        if(shopCar == null) {
            throw new Exception("未找到该商品!");
        }
        shopCarRepository.delete(shopCar);
    }

    /**
      * 清空购物车
      *@Author ZhangZiQiang
      *@Param [nickname]
      *@Date 2019/9/26 17:10
      */
    @Transactional(rollbackFor = Exception.class)
    public void deleteAllShopCar(String nickname){
        shopCarRepository.deleteByNickname(nickname);
    }

    /**
      * 改变购物车数量
      *@Author ZhangZiQiang
      *@Param [nickname, goodname, flag]
      *@Date 2019/9/26 17:25
      */
    @Transactional(rollbackFor = Exception.class)
    public String changeShopCarCount(String nickname, String goodname, int flag) throws Exception{
        ShopCar shopCar = shopCarRepository.findByNicknameAndGoodname(nickname,goodname);
        if (shopCar == null) {
            throw new Exception("未找到这样的商品!");
        }
        if(flag == 1) {
            if(shopCar.getCount() >= 5) {
                throw new Exception("该商品购物车中已有5件, 无法加购!");
            }
            shopCar.setCount(shopCar.getCount() + 1);
        }
        else if(flag == -1) {
            if(shopCar.getCount() <= 0) {
                throw new Exception("数量已为0, 无法减够");
            }
            if(shopCar.getCount() > 0 && shopCar.getCount() <= 5) {
                shopCar.setCount(shopCar.getCount() - 1);
            }
            if(shopCar.getCount() == 0) {
                this.deleteOneShopCar(nickname, goodname);
            }
        }
        else {
            throw new Exception("操作类型错误:" + flag);
        }
        return flag == 1?"加购成功!":"减购成功!";
    }
}
