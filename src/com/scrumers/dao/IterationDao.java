package com.scrumers.dao;

import java.util.List;

import com.scrumers.entity.Iteration;
import com.scrumers.entity.PlotData;

public interface IterationDao extends GenericDao<Long, Iteration> {

    Long selectId();

    Long readIterationHours(Long iid);

    Long readAllHoursForToday(Long iid);

    Long readAllDelHoursForToday(Long iid);

    boolean readIterationStoryIsDone(Long iid, Long sid);

    boolean readStoryHoursForToday(Long iid, Long sid);

    List<PlotData> readIterationDoneHours(Long iid);

    void updatePriorityInIS(Long sid, Long priority);

    void createWithId(Iteration s);

    List<Iteration> readAll();

    List<Iteration> readByProductId(Long pid);

    void deleteFromProductIteration(Long id);

    void deleteFromPlotIteration(Long iid, Long sid);

    void restoreToPlotIteration(Long iid, Long sid);

    void addStoryToAnIteration(Long iid, Long sid);

    void addStoryToADone(Long iid, Long sid);

    void addDelStoryToADone(Long iid, Long sid);
}