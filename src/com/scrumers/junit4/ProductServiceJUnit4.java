package com.scrumers.junit4;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;

import com.scrumers.entity.PlotData;
import com.scrumers.entity.Product;
import com.scrumers.entity.ProductView;
import com.scrumers.service.ProductService;

public class ProductServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private ProductService service;

    /**
     * Get all products
     * */
    @Test
    public void getProducts() {
        List<Product> products = service.getProducts();
        assertFalse(products.isEmpty());
    }

    /**
     * Get products by iteration id
     * */
    @Test
    public void getProductsByIterationId() {
        List<Product> products = service.getProductsByIterationId(1L);
        assertNotNull(products);
    }

    /**
     * Get products by iteration id null
     * */
    @Test
    public void getProductsByIterationId2() {
        List<Product> products = service.getProductsByIterationId(null);
        assertTrue(products.isEmpty());
    }

    

    /**
     * Get products view by iteration id
     * */
    @Test
    public void getProductsViewByIterationId() {
        List<ProductView> products = service.getProductsViewByIterationId(1L);
        assertNotNull(products);
    }

    /**
     * Get products view by iteration id null
     * */
    @Test
    public void getProductsViewByIterationId2() {
        List<ProductView> products = service.getProductsViewByIterationId(null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products by story id
     * */
    @Test
    public void getProductsByStoryId() {
        List<Product> products = service.getProductsByStoryId(1L);
        assertNotNull(products);
    }

    /**
     * Get products by story id null
     * */
    @Test
    public void getProductsByStoryId2() {
        List<Product> products = service.getProductsByStoryId(null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products view by story id
     * */
    @Test
    public void getProductsViewByStoryId() {
        List<ProductView> products = service.getProductsViewByStoryId(1L);
        assertNotNull(products);
    }

    /**
     * Get products view by story id null
     * */
    @Test
    public void getProductsViewByStoryId2() {
        List<ProductView> products = service.getProductsViewByStoryId(null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products by user id
     * */
    @Test
    public void getAllProductsByUserId() {
        List<Product> products = service.getAllProductsByUserId(1L);
        assertNotNull(products);
    }

    /**
     * Get products by story id null
     * */
    @Test
    public void getProductsByUserId2() {
        List<Product> products = service.getAllProductsByUserId(null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products view by user id
     * */
    @Test
    public void getAllProductsViewByUserId() {
        List<ProductView> products = service.getAllProductsViewByUserId(1L);
        assertNotNull(products);
    }

    /**
     * Get products view by user id null
     * */
    @Test
    public void getAllProductsViewByUserId2() {
        List<ProductView> products = service.getAllProductsViewByUserId(null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products view by user id
     * */
    @Test
    public void getProductsByUserIdAndOrganizationId() {
        List<Product> products = service.getProductsByUserIdAndOrganizationId(
                1L, 1L);
        assertNotNull(products);
    }

    /**
     * Get products view by user id null
     * */
    @Test
    public void getProductsByUserIdAndOrganizationId2() {
        List<Product> products = service.getProductsByUserIdAndOrganizationId(
                null, null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get products view by user id
     * */
    @Test
    public void getProductsViewByUserIdAndOrganizationId() {
        List<ProductView> products = service
                .getProductsViewByUserIdAndOrganizationId(1L, 1L);
        assertNotNull(products);
    }

    /**
     * Get products view by user id null
     * */
    @Test
    public void getProductsViewByUserIdAndOrganizationId2() {
        List<ProductView> products = service
                .getProductsViewByUserIdAndOrganizationId(null, null);
        assertTrue(products.isEmpty());
    }

    /**
     * Get product
     * */
    @Test
    public void getProduct() {
        Product products = service.getProduct(1L);
        assertNotNull(products);
    }

    /**
     * Get product by invalid id
     * */
    @Test
    public void getProduct2() {
        Product products = service.getProduct(-1L);
        assertNull(products);
    }

    /**
     * Get product by null id
     * */
    @Test
    public void getProduct3() {
        Product products = service.getProduct(null);
        assertNull(products);
    }

    /**
     * Save product valid
     * */
    @Test
    public void saveProduct() {
        Product product = new Product();
        product.setName("TestProduct");
        product.setDescr("This is test product");
        product.setOwner(0L);
        product.setIdCreator(1L);
        service.saveProduct(product);
    }

    /**
     * Save product empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveProduct2() {
        Product product = new Product();
        service.saveProduct(product);
    }

    /**
     * Update product
     * */
    @Test
    public void updateProduct() {
        Product product = new Product();
        product.setId(1L);
        product.setName("TestProduct");
        product.setDescr("This is test product");
        product.setOwner(0L);
        product.setIdCreator(1L);
        service.saveProduct(product);
    }

    /**
     * Update product null
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void updateProduct2() {
        Product product = new Product();
        product.setId(1L);
        service.saveProduct(product);
    }

    /**
     * Save product valid with user id
     * */
    @Test
    public void saveProductWithUserId() {
        Product product = new Product();
        product.setName("TestProduct");
        product.setDescr("This is test product");
        product.setOwner(0L);
        product.setIdCreator(1L);
        service.saveProduct(product, 1L, 1L);
    }

    /**
     * Save product empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveProductWithUserId2() {
        Product product = new Product();
        service.saveProduct(product, 1L, 1L);
    }

    /**
     * Update product
     * */
    @Test
    public void updateProductWithUserId() {
        Product product = new Product();
        product.setId(1L);
        product.setName("TestProduct");
        product.setDescr("This is test product");
        product.setOwner(0L);
        product.setIdCreator(1L);
        service.saveProduct(product, 1L, 1L);
    }

    /**
     * Update product null
     * */

    @Test(expected = DataIntegrityViolationException.class)
    public void updateProductWithUserId2() {
        Product product = new Product();
        product.setId(1L);
        service.saveProduct(product, 1L, 1L);
    }

    /**
     * Delete product
     * */
    @Test
    public void deleteProduct() {
        service.deleteProductByOwner(new Long[] { 1L, 2L, 3L });
    }

    /**
     * Delete product by null ids
     * */
    @Test
    public void deleteProduct2() {
        Long[] id = null;
        service.deleteProductByOwner(id);
    }

    /**
     * Delete product by member id
     * */
    @Test
    public void deleteProductByMember() {
        service.deleteProductByMember(1L, 2L);
    }

    /**
     * Delete product by member null id
     * */
    @Test
    public void deleteProductByMember2() {
        service.deleteProductByMember(null, 2L);
    }

    /**
     * Add story to product
     * */
    @Test
    public void addStoryToAProduct() {
        service.addStoryToAProduct(1L, 0L);
    }

    /**
     * Add invalid story to product
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addStoryToAProduct2() {
        service.addStoryToAProduct(1L, -1L);
    }

    /**
     * Add null story to null product
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addStoryToAProduct3() {
        service.addStoryToAProduct(null, null);
    }

    /**
     * Add iteration to product
     * */
    @Test
    public void addIterationToAProduct() {
        service.addIterationToAProduct(1L, 0L);
    }

    /**
     * Add invalid iteration to product
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addIterationToAProduct2() {
        service.addIterationToAProduct(1L, -1L);
    }

    /**
     * Add null iteration to null product
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addIterationToAProduct3() {
        service.addIterationToAProduct(null, null);
    }
    
    @Test
    public void deleteProduct1() {
        service.deleteProduct(1L);
    }
    
    @Test
    public void deleteProduct3() {
        service.deleteProduct(null);
    }

    @Test
    public void deleteProduct4() {
        service.deleteProductByOwner(1L);
    }
    
    @Test
    public void deleteProduct5() {
        Long id = null;
        service.deleteProductByOwner(id);
    }
    
    @Test
    public void getProductsView() {
        List<ProductView> pd = service.getProductsView();
        assertNotNull(pd);
    }
    
    @Test
    public void updatePriorities() {
        Long[] ids = {1L, 2L};
        service.updatePriorityInPS(ids);
    }
    
    @Test
    public void addedProductOwner() {
        service.addedProductOwner(null, null);
    }
    
    @Test
    public void addedProductOwner2() {
        service.addedProductOwner(1L, null);
    }
    
    @Test
    public void addedProductOwner3() {
        service.addedProductOwner(null, 2L);
    }
    
    @Test
    public void addedProductOwner4() {
        service.addedProductOwner(1L, 10L);
    }
    
    @Test
    public void addNewTeam() {
        service.addNewTeam(null, null);
    }
    
    @Test
    public void addNewTeam1() {
        service.addNewTeam(1L, null);
    }
    
    @Test
    public void addNewTeam2() {
        service.addNewTeam(null, 1L);
    }
    
    @Test
    public void addNewTeam3() {
        service.addNewTeam(1L, 3L);
    }
    
    @Test
    public void addNewTeam4() {
        service.addNewTeam(1L, 1L);
    }
    
    @Test
    public void deleteTeamFromProduct1() {
        service.deleteTeamFromProduct(null, null);
    }
    
    
    @Test
    public void deleteTeamFromProduct2() {
        service.deleteTeamFromProduct(1L, null);
    }
    
    @Test
    public void deleteTeamFromProduct3() {
        service.deleteTeamFromProduct(null, 1L);
    }
    
    @Test
    public void deleteTeamFromProduct4() {
        service.deleteTeamFromProduct(1L, 1L);
    }
    
    
    @Test
    public void getProductPlotData1() {
        List<PlotData> pd = service.getProductPlotData1(null);
        assertNotNull(pd);
    }
    
    @Test
    public void getProductPlotData3() {
        List<PlotData> pd = service.getProductPlotData1(1L);
        assertNotNull(pd);
    }
    
    @Test
    public void getProductPlotData5() {
        List<PlotData> pd = service.getProductPlotData1(20L);
        assertNotNull(pd);
    }
    
    @Test
    public void getProductPlotData2() {
        List<PlotData> pd = service.getProductPlotData2(null);
        assertNotNull(pd);
    }
    
    @Test
    public void getProductPlotData4() {
        List<PlotData> pd = service.getProductPlotData2(1L);
        assertNotNull(pd);
    }
    
    @Test
    public void getProductPlotData6() {
        List<PlotData> pd = service.getProductPlotData2(20L);
        assertNotNull(pd);
    }
}
