package com.scrumers.junit4;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;

import com.scrumers.entity.Iteration;
import com.scrumers.entity.PlotData;
import com.scrumers.service.IterationService;

public class IterationServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private IterationService service;

    /**
     * Getting product. Waiting for not null
     */
    @Test
    public void getIteration() {
        Iteration iteration = service.getIteration(new Long(1));
        assertNotNull(iteration);
    }

    /**
     * Getting product. Waiting for null
     */
    @Test
    public void getIteration2() {
        Iteration iteration = service.getIteration(new Long(-1));
        assertNull(iteration);
    }

    /**
     * Save valid iteration
     */
    @Test
    public void saveIteration() {
        Iteration iteration = new Iteration();
        iteration.setDateStart(new Date());
        iteration.setDateEnd(new Date());
        iteration.setName("productTest");
        iteration.setUserName("system");
        iteration.setDescr("Test descr");
        iteration.setIdCreator(0L);
        service.saveIteration(iteration, 1L);
    }

    /**
     * Update valid iteration
     */
    @Test
    public void updateIteration() {
        Iteration iteration = new Iteration();
        iteration.setId(1L);
        iteration.setDateStart(new Date());
        iteration.setDateEnd(new Date());
        iteration.setName("productTest");
        iteration.setUserName("system");
        iteration.setDescr("Test descr");
        iteration.setIdCreator(0L);
        service.saveIteration(iteration, 1L);
    }

    /**
     * Update invalid iteration
     */
    @Test
    public void updateIterationInvalid() {
        Iteration iteration = new Iteration();
        iteration.setId(-1L);
        iteration.setDateStart(new Date());
        iteration.setDateEnd(new Date());
        iteration.setName("productTest");
        iteration.setUserName("system");
        iteration.setDescr("Test descr");
        iteration.setIdCreator(0L);
        service.saveIteration(iteration, 1L);
    }

    /**
     * Delete valid iteration
     */
    @Test
    public void deleteIteration() {
        service.deleteIteration(new Long[] { 1L, 2L, 3L });
    }

    /**
     * Delete valid iteration
     */
    @Test
    public void deleteIteration2() {
        service.deleteIteration(1L);
    }

    /**
     * Delete valid iteration by null id
     */
    @Test
    public void deleteIteration3() {
        Long id = null;
        service.deleteIteration(id);
    }

    /**
     * Delete valid iteration by null ids
     */
    @Test
    public void deleteIteration4() {
        Long[] ids = null;
        service.deleteIteration(ids);
    }

    /**
     * Get list iterations
     */
    @Test
    public void getIterations() {
        List<Iteration> list = service.getIterations();
        assertNotNull(list);
    }

    /**
     * Get iterations by product id valid
     */
    @Test
    public void getIterationsByProductId() {
        List<Iteration> list = service.getIterationsByProductId(new Long(2));
        assertNotNull(list);
    }

    /**
     * Get iterations by product id invalid
     */
    @Test
    public void getIterationsByProductIdInvalid() {
        List<Iteration> list = service.getIterationsByProductId(new Long(-1));
        assertArrayEquals(new Long[] {}, list.toArray());
    }

    /**
     * Add story to iteration
     */
    @Test
    public void addStoryToAnIteration() {
        service.addStoryToAnIteration(1L, 35L);
    }

    /**
     * Add story to iteration(invalid story)
     */
    @Test(expected = DataIntegrityViolationException.class)
    public void addStoryToAnIterationInvalStory() {
        service.addStoryToAnIteration(1L, -1L);
    }

    /**
     * Add story to iteration(invalid iteration)
     */
    @Test(expected = DataIntegrityViolationException.class)
    public void addStoryToAnIterationInvalIteration() {
        service.addStoryToAnIteration(-1L, 35L);
    }
    
    @Test
    public void updatePriorityInIS() {
        Long[] ids = {1L, 2L};
        service.updatePriorityInIS(ids);
    }
    
    @Test
    public void addStoryToADone() {
        service.addStoryToADone(null, null);
    }
    
    @Test
    public void addStoryToADone1() {
        service.addStoryToADone(1L, 1L);
    }

    @Test
    public void addStoryToADone2() {
        service.addStoryToADone(1L, null);
    }
    
    @Test
    public void addStoryToADone3() {
        service.addStoryToADone(null, 1L);
    }
    
    @Test
    public void getIterationPlotData() {
        List<PlotData> pd = service.getIterationPlotData(1L);
        assertNotNull(pd);
    }
    
    @Test
    public void getIterationPlotData2() {
        List<PlotData> pd = service.getIterationPlotData(null);
        assertNull(pd);
    }
    
    
}
