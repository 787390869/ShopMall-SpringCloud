package shopcarserver.Dao.Impl;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import shopcarserver.Bean.CancelOrder;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Collections;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2020-01-10 10:38
 **/
@Repository
public class CancelOrderRepositoryImpl {

    @PersistenceContext
    private EntityManager entityManager;

    public Page<CancelOrder> search(String code, String dateFrom, String dateTo, int status, Pageable pageable) {
        StringBuilder dataSql = new StringBuilder("select * from cancel_order ");
        StringBuilder countSql = new StringBuilder("select count(1) from cancel_order ");
        StringBuilder whereSql = new StringBuilder("where 1 = 1 ");

        if (!StringUtils.isEmpty(code)) {
            whereSql.append("and code = :code ");
        }
        if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
            whereSql.append("and create_time >= :dateFrom and create_time <= :dateTo ");
        }
        if (status != -1) {
            whereSql.append("and status = :status ");
        }
        dataSql.append(whereSql).append("order by create_time desc ");

        Query dataQuery = entityManager.createNativeQuery(dataSql.toString(), CancelOrder.class);
        Query countQuery = entityManager.createNativeQuery(countSql.toString());

        if (!StringUtils.isEmpty(code)) {
            dataQuery.setParameter("code", code);
        }
        if (!StringUtils.isEmpty(dateFrom) && !StringUtils.isEmpty(dateTo)) {
            dataQuery.setParameter("dateFrom", dateFrom);
            dataQuery.setParameter("dateTo", dateTo);
        }
        if (status != -1) {
            dataQuery.setParameter("status", status);
        }

        dataQuery.setFirstResult((int) pageable.getOffset());
        dataQuery.setMaxResults(pageable.getPageSize());
        Long total = (Long) countQuery.getSingleResult();

        List<CancelOrder> content = total > pageable.getOffset() ? dataQuery.getResultList() : Collections.EMPTY_LIST;
        return new PageImpl<>(content, pageable, total);
    }

}

