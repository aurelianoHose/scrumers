package com.scrumers.service;

import java.util.List;

import com.scrumers.entity.Comment;
import com.scrumers.entity.Task;

public interface TaskService {

    Task getTask(Long id);

    void saveTask(Task t, Long sid);

    void updateStatus(Long id, Long stid);

    void updatePriorities(Long stat_id, Long sid, Long[] ids);

    void saveTask(Task t);

    void deleteTask(Long[] id);

    void deleteTask(Long id);

    List<Task> getTasks();

    List<Task> getTasksByStoryId(Long sid);

    void commentTask(Long uid, Long tid, String comment);

    void deleteComment(Long cid);

    List<Comment> readCommentsByTaskId(Long tid);

}