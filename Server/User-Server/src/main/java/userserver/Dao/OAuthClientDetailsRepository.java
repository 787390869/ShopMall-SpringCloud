package userserver.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import userserver.Bean.OAuthClientDetails;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-19 14:45
 **/
@Repository
public interface OAuthClientDetailsRepository extends JpaRepository<OAuthClientDetails, String> {
    OAuthClientDetails findAllByClientId(String clientId);
}
