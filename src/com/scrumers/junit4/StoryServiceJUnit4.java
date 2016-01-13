package com.scrumers.junit4;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;

import com.scrumers.entity.Comment;
import com.scrumers.entity.Story;
import com.scrumers.service.StoryService;

public class StoryServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private StoryService service;

    /**
     * Get all stories
     * */
    @Test
    public void getStories() {
        List<Story> stories = service.getStories();
        assertNotNull(stories);
    }

    /**
     * Get story
     * */
    @Test
    public void getStory() {
        Story story = service.getStory(1L);
        assertNotNull(story);
    }

    /**
     * Get story for null id
     * */
    @Test
    public void getStory2() {
        Story story = service.getStory(null);
        assertNull(story);
    }

    /**
     * Get stories by product id valid
     * */
    @Test
    public void getStoriesByProductId() {
        List<Story> stories = service.getStoriesByProductId(1L);
        assertNotNull(stories);
    }

    /**
     * Get stories by task id invalid
     * */
    @Test
    public void getStoriesByProductId2() {
        List<Story> stories = service.getStoriesByProductId(null);
        assertTrue(stories.isEmpty());
    }

    /**
     * Get stories by iteration id valid
     * */
    @Test
    public void getStoriesByIterationId() {
        List<Story> stories = service.getStoriesByIterationId(1L);
        assertNotNull(stories);
    }

    /**
     * Get stories by iteration id invalid
     * */
    @Test
    public void getStoriesByIterationId2() {
        List<Story> stories = service.getStoriesByIterationId(null);
        assertTrue(stories.isEmpty());
    }

    /**
     * Save story valid
     * */
    @Test
    public void saveStory() {
        Story story = new Story();
        story.setStoryId(0010L);
        story.setName("TestStory");
        story.setDescr("test story");
        story.setStoryPoints("S");
        story.setEstimate(2);
        story.setHowToDemo("Test Demo");
        story.setTrack("trackTest");
        story.setIdCreator(1L);
        story.setStatusId(null);
        service.saveStory(story, 1L, 1L);
    }

    /**
     * Save story valid
     * */
    @Test
    public void saveStory2() {
        Story story = new Story();
        story.setStoryId(0010L);
        story.setName("TestStory");
        story.setDescr("test story");
        story.setStoryPoints("S");
        story.setEstimate(2);
        story.setHowToDemo("Test Demo");
        story.setTrack("trackTest");
        story.setIdCreator(1L);
        story.setStatusId(0L);
        service.saveStory(story, null, null);
    }

    @Test
    public void saveStory5() {
        Story story = new Story();
        story.setStoryId(0010L);
        story.setName("TestStory");
        story.setDescr("test story");
        story.setStoryPoints("S");
        story.setEstimate(2);
        story.setHowToDemo("Test Demo");
        story.setTrack("trackTest");
        story.setIdCreator(1L);
        story.setStatusId(4L);
        story.setId(null);
        service.saveStory(story, null, 1L);
    }

    /**
     * Save story empty
     * */
    @Test
    public void saveStory3() {
        Story story = new Story();
        service.saveStory(story, null, null);
    }

    /**
     * Save story null
     * */
    @Test(expected = NullPointerException.class)
    public void saveStory4() {
        Story story = null;
        service.saveStory(story, null, null);
    }

    /**
     * Update story empty
     * */
    @Test
    public void updateStory2() {
        Story story = new Story();
        story.setId(1L);
        story.setStatusId(1L);
        service.saveStory(story, null, null);
    }

    /**
     * Update story valid
     * */
    @Test
    public void updateStory() {
        Story story = new Story();
        story.setId(1L);
        story.setStoryId(0010L);
        story.setName("TestStory");
        story.setDescr("test story");
        story.setStoryPoints("S");
        story.setEstimate(2);
        story.setHowToDemo("Test Demo");
        story.setTrack("trackTest");
        story.setIdCreator(1L);
        story.setStatusId(1L);
        service.saveStory(story, null, null);
    }

    /**
     * Delete story for valid ids
     * */
    @Test
    public void deleteStory() {
        service.deleteStory(new Long[] { 1L, 2L, 3L });
    }

    @Test
    public void deleteStory1() {
        service.deleteStory(1L, 1L);
    }

    @Test
    public void deleteStory6() {
        service.deleteStory(null, 1L);
    }

    @Test
    public void deleteStoryFromIteration1() {
        service.deleteStoryFromIteration(null);
    }

    @Test
    public void deleteStoryFromIteration2() {
        service.deleteStoryFromIteration(1L);
    }

    @Test
    public void getStoryByTaskId1() {
        Story s = service.getStory(null);
        assertNull(s);
    }

    @Test
    public void getStoryByTaskId2() {
        Story s = service.getStory(1L);
        assertNotNull(s);
    }

    /**
     * Delete story for invalid ids
     * */
    @Test
    public void deleteStory2() {
        service.deleteStory(new Long[] { -1L, -2L, -3L });
    }

    /**
     * Delete story for null ids
     * */
    @Test
    public void deleteStory3() {
        service.deleteStory(1L);
    }

    /**
     * Delete story for null id
     * */
    @Test
    public void deleteStory4() {
        Long id = null;
        service.deleteStory(id);
    }

    /**
     * Delete story for null ids
     * */
    @Test
    public void deleteStory5() {
        Long[] ids = null;
        service.deleteStory(ids);
    }

    /**
     * Add task to a story valid data
     * */
    @Test
    public void addTaskToAStory() {
        service.addTaskToAStory(1L, 0L);
    }

    /**
     * Add task to a story valid data
     * */
    @Test(expected = DuplicateKeyException.class)
    public void addTaskToAStory1() {
        service.addTaskToAStory(1L, 1L);
    }

    /**
     * Add task to a story invalid sid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTaskToAStory2() {
        service.addTaskToAStory(-1L, 1L);
    }

    /**
     * Add task to a story invalid tid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTaskToAStory3() {
        service.addTaskToAStory(1L, -1L);
    }

    /**
     * Add task to a story invalid data
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTaskToAStory4() {
        service.addTaskToAStory(-1L, -1L);
    }

    /**
     * Add task to a story null data
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTaskToAStory5() {
        service.addTaskToAStory(null, null);
    }

    /**
     * Add user to a story valid data
     * */
    @Test
    public void addUserToAStory() {
        service.addUserToAStory(1L, 1L);
    }

    /**
     * Add user to a story invalid sid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addUserToAStory2() {
        service.addUserToAStory(-1L, 1L);
    }

    /**
     * Add user to a story invalid tid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addUserToAStory3() {
        service.addUserToAStory(1L, -1L);
    }

    /**
     * Add user to a story invalid data
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addUserToAStory4() {
        service.addUserToAStory(-1L, -1L);
    }

    /**
     * Add user to a story null data
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addUserToAStory5() {
        service.addUserToAStory(null, null);
    }

    @Test
    public void getStoryByTaskId3() {
        Story s = service.getStoryByTaskId(null);
        assertNull(s);
    }

    @Test
    public void getStoryByTaskId4() {
        Story s = service.getStoryByTaskId(1L);
        assertNotNull(s);
    }

    @Test
    public void updateStatus1() {
        service.updateStatus(1L, 3L);
    }

    @Test
    public void getUnusedStoriesFromBacklog() {
        List<Story> s = service.getUnusedStoriesFromBacklog(1L);
        assertNotNull(s);
    }

    @Test
    public void IterationStoryIsDone() {
        boolean b = service.IterationStoryIsDone(1L, 1L);
        assertFalse(b);
    }

    @Test
    public void comment() {
        service.comment(1L, 1L, "D");
    }

    @Test
    public void getComment1() {
        Comment c = service.getComment(null);
        assertNotNull(c);
    }

    @Test
    public void getComment2() {
        Comment c = service.getComment(1L);
        assertNotNull(c);
    }

    @Test
    public void deleteComment() {
        service.deleteComment(1L, 1L);
    }

    @Test
    public void readCommentsByStoryId() {
        List<Comment> s = service.readCommentsByStoryId(1L);
        assertNotNull(s);
    }

    @Test
    public void updatePrioritiesOfUnuserdStoriesFromBcklog1() {
        Long[] ids = { 1L, 2L, 3L, 4L, 5L };
        service.updatePrioritiesOfUnuserdStoriesFromBcklog(1L, ids);
    }

    @Test
    public void updatePrioritiesOfUnuserdStoriesFromBcklog2() {
        Long[] ids = { 1L, 2L, 3L, 4L };
        service.updatePrioritiesOfUnuserdStoriesFromBcklog(1L, ids);
    }

    @Test
    public void updatePriorities1() {
        Long[] ids = { 1L };
        service.updatePriorities(3L, 1L, ids);
    }

    @Test
    public void updatePriorities2() {
        Long[] ids = { 1L, 2L };
        service.updatePriorities(3L, 1L, ids);
    }

    @Test
    public void updateStatus3() {
        service.updateStatusToDone(1L, 1L, 2L);
    }

    @Test
    public void updateStatus4() {
        service.updateStatusToDone(3L, 1L, 3L);
    }

    @Test
    public void updateStatus7() {
        service.updateStatusToDone(2L, 1L, 4L);
    }
    
    @Test
    public void updateStatus() {
        service.updateStatusToDone(5L, 1L, 4L);
    }

    @Test
    public void updateStatus5() {
        service.updateStatus(1L, 1L, 3L);
    }

    @Test
    public void updateStatus6() {
        service.updateStatus(3L, 1L, 3L);
    }

}
