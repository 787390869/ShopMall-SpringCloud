package shopcarserver.Dao.Impl;

import org.hibernate.cfg.annotations.QueryBinder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.CancelOrder;
import shopcarserver.Bean.Order;
import shopcarserver.Dao.CancelOrderRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-10 10:38
 **/
@Repository
public class CancelOrderRepositoryImpl {

    @Autowired
    @Lazy
    private CancelOrderRepository cancelOrderRepository;

    /** 功能描述: 动态查询退订单
      * @Param: [code, dateFrom, dateTo, status, pageable]
      * @Author: ZhangZiQiang
      * @Date: 2020/1/20 9:59
      */
    public Page<CancelOrder> doSearch(Long orderId, String dateFrom, String dateTo, int status, Pageable pageable) {
        Specification<CancelOrder> cancelOrderSpecification = (Specification<CancelOrder>) (root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            if (orderId != -1) {
                predicates.add(cb.equal(root.get("orderId").as(Long.class), orderId));
            }
            if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
                predicates.add(cb.greaterThanOrEqualTo(root.get("createTime").as(String.class), dateFrom));
                predicates.add(cb.lessThanOrEqualTo(root.get("createTime").as(String.class), dateTo));
            }
            if (status != -1) {
                predicates.add(cb.equal(root.get("status").as(Integer.class), status));
            }
            Predicate[] pre = new Predicate[predicates.size()];
            query.orderBy(cb.desc(root.get("createTime")));
            return query.where(predicates.toArray(pre)).getRestriction();
        };
        return cancelOrderRepository.findAll(cancelOrderSpecification, pageable);
    }

}

