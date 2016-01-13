package com.scrumers.junit4;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.scrumers.entity.Comment;
import com.scrumers.entity.Task;
import com.scrumers.service.TaskService;

public class TaskServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private TaskService service;

    /**
     * Save task
     * */
    @Test
    public void saveTask() {
        Task task = new Task();
        task.setAssignee(1L);
        task.setEstimatePre(2);
        task.setEstimateReal(2);
        task.setSummary("this is task");
        task.setTaskId(0101);
        task.setUserName("Test");
        task.setStatusId(1L);
        service.saveTask(task);
    }

    /**
     * Save empty task
     * */
    @Test
    public void saveTask2() {
        Task task = new Task();
        task.setStatusId(1L);
        service.saveTask(task);
    }

    @Test
    public void saveTask3() {
        Task task = new Task();
        task.setStatusId(1L);
        service.saveTask(task, 1L);
    }

    @Test
    public void saveTask5() {
        Task task = new Task();
        task.setStatusId(1L);
        service.saveTask(task, null);
    }

    @Test
    public void updatePriorities1() {
        Long[] ids = null;
        service.updatePriorities(1L, 1L, ids);
    }

    @Test
    public void updatePriorities2() {
        Long[] ids = { 1L };
        service.updatePriorities(4L, 1L, ids);
    }

    @Test
    public void updatePriorities3() {
        Long[] ids = { 1L, 2L, 3L, 4L, 5L };
        service.updatePriorities(4L, 1L, ids);
    }

    @Test
    public void saveTask4() {
        Task task = new Task();
        task.setStatusId(1L);
        task.setId(1000L);
        service.saveTask(task, 1L);
    }

    /**
     * Get task
     * */
    @Test
    public void getTask() {
        Task task = service.getTask(1L);
        assertNotNull(task);
    }

    /**
     * Get task by null id
     * */
    @Test
    public void getTask2() {
        Task task = service.getTask(null);
        assertNull(task);
    }

    /**
     * Get tasks
     * */
    @Test
    public void getTasks() {
        List<Task> task = service.getTasks();
        assertNotNull(task);
    }

    /**
     * Get task by story id
     * */
    @Test
    public void getTasksByStoryId() {
        List<Task> tasks = service.getTasksByStoryId(1L);
        assertNotNull(tasks);
    }

    /**
     * Get task by null story id
     * */
    @Test
    public void getTasksByStoryId2() {
        List<Task> tasks = service.getTasksByStoryId(null);
        assertNotNull(tasks);
    }

    /**
     * Update task
     * */
    @Test
    public void updateTask() {
        Task task = new Task();
        task.setId(1L);
        task.setAssignee(1L);
        task.setEstimatePre(2);
        task.setEstimateReal(2);
        task.setSummary("this is task");
        task.setTaskId(0101);
        task.setUserName("Test");
        task.setStatusId(1L);
        service.saveTask(task);
    }

    /**
     * Update empty task
     * */
    @Test
    public void updateTask2() {
        Task task = new Task();
        task.setId(1L);
        task.setStatusId(1L);
        service.saveTask(task);
    }

    /**
     * Delete tasks
     * */
    @Test
    public void deleteTask() {
        service.deleteTask(new Long[] { 1L, 2L, 3L });
    }

    @Test
    public void deleteTask1() {
        Long id = null;
        service.deleteTask(id);
    }

    @Test
    public void deleteTask3() {
        service.deleteTask(1L);
    }

    @Test
    public void comment() {
        service.commentTask(1L, 1L, "S");
    }

    @Test
    public void comment1() {
        service.commentTask(null, null, "");
    }

    @Test
    public void comment2() {
        service.commentTask(1L, null, "");
    }

    @Test
    public void comment5() {
        service.commentTask(1L, null, "5");
    }

    @Test
    public void comment6() {
        service.commentTask(null, 1L, "5");
    }

    @Test
    public void comment7() {
        service.commentTask(1L, 2l, "");
    }

    @Test
    public void comment3() {
        service.commentTask(null, 1L, "");
    }

    @Test
    public void comment4() {
        service.commentTask(null, null, "d");
    }

    @Test
    public void updateStatus() {
        service.updateStatus(1L, 1L);
    }

    @Test
    public void deleteComment1() {
        service.deleteComment(1L);
    }

    @Test
    public void deleteComment2() {
        service.deleteComment(null);
    }

    @Test
    public void readCommentsByTaskId() {
        List<Comment> c = service.readCommentsByTaskId(1L);
        assertNotNull(c);
    }

    @Test
    public void readCommentsByTaskId2() {
        List<Comment> c = service.readCommentsByTaskId(null);
        assertNull(c);
    }

    /**
     * Delete tasks by null ids
     * */
    @Test
    public void deleteTask2() {
        Long[] id = null;
        service.deleteTask(id);
    }

    public void updateSt1() {
        service.updateStatus(1L, 1L);
    }
}
