package shopcarserver.Dao.Impl;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.Order;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.math.BigInteger;
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

    public Page<Order> searchList(String code, int status, String tbName, String dateFrom, String dateTo, Pageable pageable) {
        StringBuilder dataSql = new StringBuilder("select * from t_order ");
        StringBuilder countSql = new StringBuilder("select count(1) from t_order ");
        StringBuilder whereSql = new StringBuilder("where 1 = 1 ");

        if (status != -1) {
            whereSql.append("and status = :status ");
        }
        if (!StringUtils.isEmpty(tbName)) {
            whereSql.append("and tb_name = :tbName ");
        }
        if (!StringUtils.isEmpty(code)) {
            whereSql.append("and code = :code ");
        }
        if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
            whereSql.append("and create_time >= :dateFrom and create_time <= :dateTo ");
        }
        dataSql.append(whereSql).append("order by create_time desc");

        Query dataQuery = entityManager.createNativeQuery(dataSql.toString(), Order.class);
        Query countQuery = entityManager.createNativeQuery(countSql.toString());

        if (status != -1) {
            dataQuery.setParameter("status", status);
        }
        if (!StringUtils.isEmpty(tbName)) {
            dataQuery.setParameter("tbName", tbName);
        }
        if (!StringUtils.isEmpty(code)) {
            dataQuery.setParameter("code", code);
        }
        if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
            dataQuery.setParameter("dateFrom", dateFrom);
            dataQuery.setParameter("dateTo", dateTo);
        }
        dataQuery.setFirstResult((int) pageable.getOffset());
        dataQuery.setMaxResults(pageable.getPageSize());
        BigInteger count = (BigInteger) countQuery.getSingleResult();
        Long total = count.longValue();

        List<Order> content = total > pageable.getOffset() ? dataQuery.getResultList() : Collections.EMPTY_LIST;
        return new PageImpl<>(content, pageable, total);
    }

}

