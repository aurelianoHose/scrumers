package com.scrumers.dao.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.scrumers.dao.ProductDao;
import com.scrumers.entity.PlotData;
import com.scrumers.entity.Product;
import com.scrumers.entity.ProductView;

public class ProductDaoImpl extends SqlSessionDaoSupport implements ProductDao {

    @Override
    public void create(Product p) {
        getSqlSession().insert("Product.create", p);
    }

    @Override
    public void createWithUserId(Product p) {
        getSqlSession().insert("Product.createWithUserId", p);
    }

    @Override
    public Product read(Long id) {
        return getSqlSession().selectOne("Product.read", id);
    }

    @Override
    public List<Product> readAll() {
        return getSqlSession().selectList("Product.readAll");
    }

    @Override
    public List<ProductView> readAllView() {
        return getSqlSession().selectList("Product.readAllView");
    }

    @Override
    public List<Product> readByTeamId(Long tid) {
        return getSqlSession().selectList("Product.readByTaskId", tid);
    }

    @Override
    public List<Product> readByStoryId(Long sid) {
        return getSqlSession().selectList("Product.readByStoryId", sid);
    }

    @Override
    public List<ProductView> readViewByStoryId(Long sid) {
        return getSqlSession().selectList("Product.readViewByStoryId", sid);
    }

    @Override
    public List<Product> readByIterationId(Long iid) {
        return getSqlSession().selectList("Product.readByIterationId", iid);
    }

    @Override
    public List<ProductView> readViewByIterationId(Long iid) {
        return getSqlSession().selectList("Product.readViewByIterationId", iid);
    }

    @Override
    public List<Product> readAllByUserId(Long uid) {
        return getSqlSession().selectList("Product.readAllByUserId", uid);
    }

    @Override
    public List<ProductView> readAllViewByUserId(Long uid) {
        return getSqlSession().selectList("Product.readAllViewByUserId", uid);
    }

    @Override
    public List<Product> readByUserIdAndOrganizationId(Long uid, Long oid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("uid", uid);
        map.put("oid", oid);
        return getSqlSession().selectList(
                "Product.readByUserIdAndOrganizationId", map);
    }

    @Override
    public List<ProductView> readViewByUserIdAndOrganizationId(Long uid,
            Long oid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("uid", uid);
        map.put("oid", oid);
        return getSqlSession().selectList(
                "Product.readViewByUserIdAndOrganizationId", map);
    }

    @Override
    public void update(Product s) {
        getSqlSession().update("Product.update", s);
    }

    @Override
    public void delete(final Long id) {
        getSqlSession().delete("Product.delete", id);
    }

    @Override
    public void deleteFromProductStoryByStoryId(Long sid) {
        getSqlSession().delete("Product.deleteFromProductStoryByStoryId", sid);
    }

    @Override
    public void deleteFromProductIterationByIterationId(Long iid) {
        getSqlSession().delete(
                "Product.deleteFromProductIterationByIterationId", iid);
    }

    @Override
    public void deleteFromProductStoryByProductId(Long pid) {
        getSqlSession()
                .delete("Product.deleteFromProductStoryByProductId", pid);
    }

    @Override
    public void deleteFromProductIterationByProductId(Long pid) {
        getSqlSession().delete("Product.deleteFromProductIterationByProductId",
                pid);
    }

    @Override
    public void addStoryToAProduct(Long pid, Long sid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("pid", pid);
        map.put("sid", sid);
        getSqlSession().insert("Product.addStoryToAProduct", map);
    }

    @Override
    public void addIterationToAProduct(Long pid, Long iid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("pid", pid);
        map.put("iid", iid);
        getSqlSession().insert("Product.addIterationToAProduct", map);
    }

    @Override
    public Long selectId() {
        return getSqlSession().selectOne("Product.selectId");
    }

    @Override
    public void updatePriorityInPS(Long sid, Long prid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("sid", sid);
        map.put("prid", prid);
        getSqlSession().update("Product.updatePriorityInPS", map);
    }

    @Override
    public void addStoryToAProductWithPriority(Long pid, Long sid, Long priority) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("pid", pid);
        map.put("sid", sid);
        map.put("priority", priority);
        getSqlSession().insert("Product.addStoryToAProductWithPriority", map);
    }

    @Override
    public void addedProductOwner(Long pid, Long uid) {
        Map<String, Long> map = new HashMap<String, Long>();
        map.put("pid", pid);
        map.put("uid", uid);
        getSqlSession().update("Product.addedProductOwner", map);
    }

    @Override
    public List<PlotData> readProductDiadgramData1(Long pid) {
        return getSqlSession().selectList("Product.readProductDiadgramData1",
                pid);
    }

    @Override
    public List<PlotData> readProductDiadgramData2(Long pid) {
        return getSqlSession().selectList("Product.readProductDiadgramData2",
                pid);
    }

    @Override
    public Long readAllDelHoursForToday(Long pid) {
        return getSqlSession()
                .selectOne("Product.readAllDelHoursForToday", pid);
    }

    @Override
    public List<PlotData> readIterationDoneHours(Long pid) {
        return getSqlSession()
                .selectList("Product.readIterationDoneHours", pid);
    }

    @Override
    public Long readAllHoursForToday(Long pid) {
        return getSqlSession()
                .selectOne("Product.readAllHoursForToday", pid);
    }

}
