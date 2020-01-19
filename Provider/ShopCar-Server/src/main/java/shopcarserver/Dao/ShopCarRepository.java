package shopcarserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import shopcarserver.Bean.ShopCar;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/8/28 16:26
 **/
@Repository
public interface ShopCarRepository extends JpaRepository<ShopCar,Long> {

    @Query(nativeQuery = true, value = "select count('id') from shopcars where nickname=:nickname")
    int countOfShopcar(@Param("nickname") String nickname);

    @Query(nativeQuery = true, value = "select shopcount from shopcars where name=:goodname and nickname=:nickname")
    int findByGoodnameAndNickname(String goodname, String nickname);

    @Query(nativeQuery = true, value = "select count('id') from shopcars where nickname=:nickname")
    int findCountByNickname(@Param("nickname") String nickname);

    @Query(nativeQuery = true, value = "select * from shopcars where nickname=:nickname and name like concat('%', :goodname , '%')")
    ShopCar findByNicknameAndGoodname(@Param("nickname") String nickname, @Param("goodname") String goodname);

    List<ShopCar> findByNickname(String nickname);

    @Query(nativeQuery = true, value = "delete from shopcars where nickname=:nickname")
    void deleteByNickname(String nickname);

    ShopCar findByTablenameAndGoodidAndNickname(String tableName, int goodid, String nickname);
}
