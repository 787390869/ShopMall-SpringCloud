package userserver.Security;

import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.security.acl.Permission;
import java.util.Collection;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-15 16:01
 **/
@Component
public class CustomPermissionEvaluator implements PermissionEvaluator {

    public CustomPermissionEvaluator() {
    }

    @Override
    public boolean hasPermission(Authentication authentication, Object targetDomainObject, Object permission) {
        System.out.println("haha");
        if("user".equals(targetDomainObject)) {
            return this.hasPermission(authentication, permission);
        } else {
            return false;
        }
    }

    @Override
    public boolean hasPermission(Authentication authentication, Serializable serializable, String s, Object o) {
        return false;
    }

    public boolean hasPermission(Authentication authentication, Object permission) {
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for(GrantedAuthority authority: authorities) {
            if(authority.getAuthority().equals(permission)) {
                return true;
            }
        }
        return false;
    }
}

