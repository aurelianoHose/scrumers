package com.scrumers.dao;

import java.util.List;

import com.scrumers.entity.Comment;
import com.scrumers.entity.Task;

public interface TaskDao extends GenericDao<Long, Task> {

    List<Task> readAll();

    Long selectId();
    
    void commentTask(Long uid, Long tid, String comment);

    void createWithId(Task s, Long sid);

    void updateStatus(Long id, Long stid);

    void updatePriorityInST(Long tid, Long priority);

    List<Task> readByStoryId(Long sid);

    void deleteFromStoryTasks(Long id);
    
    void deleteComment(Long cid);

    List<Long> readPriorities(Long sid, Long stat_id);

    List<Comment> readCommentsByTaskId(Long tid);
}
