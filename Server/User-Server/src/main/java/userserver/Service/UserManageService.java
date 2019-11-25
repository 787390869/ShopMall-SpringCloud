package userserver.Service;

import BaseWeb.BaseService;
import BaseWeb.ResultData;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import userserver.Bean.User;
import userserver.Dao.UserDao;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-25 13:45
 **/
@Service
public class UserManageService extends BaseService {

    @Autowired
    private UserDao userDao;

    /** 功能描述: 查询用户分页数据
      * @Param: [pageNum, pageSize]
      * @Author: ZhangZiQiang
      * @Date: 2019/11/25 14:01
      */
    public ResultData<JSONObject> findAllUser(int pageNum, int pageSize) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        Page<User> users = userDao.findAll(pageable);
        JSONObject jsonObject = new JSONObject();
        users.getContent().stream().forEach(c -> c.setPassword(encodeMd5(c.getPassword())));
        jsonObject.put("list", users.getContent());
        jsonObject.put("count", users.getTotalPages());
        return new ResultData<>(jsonObject);
    }

}

