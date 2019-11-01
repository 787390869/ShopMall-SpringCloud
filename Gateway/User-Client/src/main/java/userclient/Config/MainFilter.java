package userclient.Config;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;

import javax.servlet.http.HttpServletResponse;


/**
 * 网关过滤器
 * @author 张自强
 */
public class MainFilter extends ZuulFilter{

    private static Logger log = LoggerFactory.getLogger(MainFilter.class);

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() throws ZuulException {
        RequestContext ctx = RequestContext.getCurrentContext();
        try{
            doSomething();
        } catch (Exception e){
            ctx.set("error.status_code", HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            ctx.set("error.exception", e);
        }
        return null;
    }

    private void doSomething() {
        throw new RuntimeException("出现异常!");
    }

    @Override
    public String filterType() {
        // 声明这是一个Pre类型的路由前置过滤器
        return FilterConstants.PRE_TYPE;
    }

    @Override
    public int filterOrder() {
        return FilterConstants.PRE_DECORATION_FILTER_ORDER-1;
    }
}
