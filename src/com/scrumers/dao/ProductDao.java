package com.scrumers.dao;

import java.util.List;

import com.scrumers.entity.PlotData;
import com.scrumers.entity.Product;
import com.scrumers.entity.ProductView;

public interface ProductDao extends GenericDao<Long, Product> {

    Long selectId();

    List<Product> readAll();

    void createWithUserId(Product p);

    void updatePriorityInPS(Long sid, Long prid);

    Long readAllDelHoursForToday(Long pid);

    Long readAllHoursForToday(Long pid);

    List<PlotData> readIterationDoneHours(Long pid);

    List<Product> readByTeamId(Long tid);

    List<Product> readByIterationId(Long iid);

    List<ProductView> readViewByIterationId(Long iid);

    List<Product> readByStoryId(Long sid);

    List<ProductView> readViewByStoryId(Long sid);

    List<Product> readAllByUserId(Long uid);

    List<ProductView> readAllViewByUserId(Long uid);

    List<Product> readByUserIdAndOrganizationId(Long uid, Long oid);

    List<ProductView> readViewByUserIdAndOrganizationId(Long uid, Long oid);

    void deleteFromProductStoryByStoryId(Long sid);

    void deleteFromProductIterationByIterationId(Long iid);

    void deleteFromProductStoryByProductId(Long pid);

    void deleteFromProductIterationByProductId(Long pid);

    void addStoryToAProduct(Long pid, Long sid);

    void addStoryToAProductWithPriority(Long pid, Long sid, Long priority);

    void addIterationToAProduct(Long pid, Long iid);

    void addedProductOwner(Long pid, Long uid);

    List<ProductView> readAllView();

    List<PlotData> readProductDiadgramData1(Long pid);

    List<PlotData> readProductDiadgramData2(Long pid);
}
