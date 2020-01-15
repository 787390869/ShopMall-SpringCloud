package shopcarserver.Dao.Impl;

import com.alibaba.fastjson.JSONObject;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.*;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.Order;
import shopcarserver.Dao.OrderRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-10 09:44
 **/
@Repository
public class OrderRepositoryImpl {

    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    @Lazy
    private OrderRepository orderRepository;

    /** 功能描述: 动态sql查询
      * @Param: [code, status, tbName, dateFrom, dateTo]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/13 11:11
      */
    public Page<Order> selectOrder(String code, int status, String dateFrom, String dateTo, Pageable pageable) {
        Specification<Order> orderSpecification = (Specification<Order>) (Root<Order> root, CriteriaQuery<?> query, CriteriaBuilder cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            if (!StringUtils.isEmpty(code)) {
                predicates.add(cb.equal(root.get("code").as(String.class), code));
            }
            if (status != -1) {
                predicates.add(cb.equal(root.get("status").as(Integer.class), status));
            }
            if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
                predicates.add(cb.greaterThanOrEqualTo(root.get("createTime").as(String.class), dateFrom));
                predicates.add(cb.lessThanOrEqualTo(root.get("createTime").as(String.class), dateTo));
            }
            Predicate[] pre = new Predicate[predicates.size()];
            query.orderBy(cb.desc(root.get("createTime")));
            return query.where(predicates.toArray(pre)).getRestriction();
        };
        return orderRepository.findAll(orderSpecification, pageable);
    }

}

