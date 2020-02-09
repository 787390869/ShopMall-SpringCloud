package userserver.Security;

import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.DefaultOAuth2RefreshToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.stereotype.Component;
import userserver.Bean.User;
import java.util.HashMap;
import java.util.Map;

@Component
public class CustomTokenEnhancer implements TokenEnhancer {

    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken oAuth2AccessToken, OAuth2Authentication oAuth2Authentication) {
        User user = (User) oAuth2Authentication.getPrincipal();
        final Map<String, Object> additionInfo = new HashMap<>();
        additionInfo.put("nickname", user.getNickname());
        ((DefaultOAuth2AccessToken) oAuth2AccessToken).setAdditionalInformation(additionInfo);

        if (oAuth2AccessToken instanceof DefaultOAuth2AccessToken && oAuth2AccessToken.getRefreshToken() instanceof DefaultOAuth2RefreshToken) {
            DefaultOAuth2AccessToken token = (DefaultOAuth2AccessToken) oAuth2AccessToken;
            token.setValue("ShopMall-" + oAuth2AccessToken.getValue());
            token.setRefreshToken(new DefaultOAuth2RefreshToken("ShopMall-" + token.getRefreshToken().getValue().replace("ShopMall-", "")));
            return token;
        }

        return oAuth2AccessToken;
    }

}
