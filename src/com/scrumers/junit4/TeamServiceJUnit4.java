package com.scrumers.junit4;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;

import com.scrumers.entity.Team;
import com.scrumers.service.TeamService;

public class TeamServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private TeamService service;

    /**
     * Save team
     * */
    @Test
    public void saveTeam() {
        Team team = new Team();
        team.setName("TestTeam");
        team.setNumOfUsers(5L);
        team.setTeamRole(1L);
        team.setUserName("test");
        team.setIdCreator(0L);
        service.saveTeam(team, 1L, 1L);
    }

    /**
     * Save empty team
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveTeam2() {
        Team team = new Team();
        service.saveTeam(team, 1L, 1L);
    }

    /**
     * add user to team
     * */
    @Test
    public void addUserToATeam() {
        service.addUserToATeam(2L, 1L, 1L);
    }

    @Test
    public void addUserToATea8() {
        service.addUserToATeam(2L, 2L, 2L);
    }

    
    @Test
    public void addUserToATeam7() {
        service.addUserToATeam(3L, 1L, 2L);
    }
    @Test
    public void addUserToATeam8() {
        service.addUserToATeam(18L, 1L, 1L);
    }
    
    
    /**
     * add user to team for invalid data
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addUserToATeam2() {
        service.addUserToATeam(-1L, -1L, 1L);
    }

    /**
     * add user to team for null data
     * */
    @Test
    public void addUserToATeam4() {
        service.addUserToATeam(2L, null, null);
    }
    
    @Test
    public void addUserToATeam5() {
        service.addUserToATeam(2L, null, 1L);
    }
    
    @Test
    public void addUserToATeam6() {
        service.addUserToATeam(2L, 1L, null);
    }
    
    @Test
    public void addUserToATeam3() {
        service.addUserToATeam(null, null, null);
    }

    /**
     * get team
     * */
    @Test
    public void getTeam() {
        Team team = service.getTeam(1L);
        assertNotNull(team);
    }

    /**
     * get team for null id
     * */
    @Test
    public void getTeam2() {
        Long id = null;
        Team team = service.getTeam(id);
        assertNull(team);
    }

    /**
     * get team by name
     * */
    @Test
    public void getTeam3() {
        Team team = service.getTeam("Liverpool");
        assertNotNull(team);
    }

    /**
     * get team by null name
     * */
    @Test
    public void getTeam4() {
        String name = null;
        Team team = service.getTeam(name);
        assertNull(team);
    }

    /**
     * get team role
     * */
    @Test
    public void getTeamRole() {
        String teamRole = service.getTeamRole(2L, 1L);
        assertNotNull(teamRole);
    }

    /**
     * get team role by null data
     * */
    @Test
    public void getTeamRole2() {
        String teamRole = service.getTeamRole(null, null);
        assertNull(teamRole);
    }

    /**
     * get teams
     * */
    @Test
    public void getTeams() {
        List<Team> teams = service.getTeams();
        assertNotNull(teams);
    }

    /**
     * get teams by user id
     * */
    @Test
    public void getTeamsByUserId() {
        List<Team> teams = service.getTeamsByUserId(2L);
        assertNotNull(teams);
    }

    /**
     * get teams by null user id
     * */
    @Test
    public void getTeamsByUserId2() {
        List<Team> teams = service.getTeamsByUserId(null);
        assertTrue(teams.isEmpty());
    }

    /**
     * get teams by user id
     * */
    @Test
    public void getTeamsByUserIdAndOrganizationId() {
        List<Team> teams = service.getTeamsByUserIdAndOrganizationId(2L, 1L);
        assertNotNull(teams);
    }

    /**
     * get teams by null data
     * */
    @Test
    public void getTeamsByUserIdAndOrganizationId2() {
        List<Team> teams = service
                .getTeamsByUserIdAndOrganizationId(null, null);
        assertTrue(teams.isEmpty());
    }

    @Test
    public void updateTeam() {
        Team team = new Team();
        team.setId(1L);
        team.setName("TestTeam");
        team.setNumOfUsers(5L);
        team.setTeamRole(1L);
        team.setUserName("test");
        team.setIdCreator(0L);
        service.saveTeam(team, 1L, 1L);
    }

    /**
     * Save empty team
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void updateTeam2() {
        Team team = new Team();
        team.setId(1L);
        service.saveTeam(team, 1L, 1L);
    }

    /**
     * Delete team by owner
     * */
    @Test
    public void deleteTeamByOwner() {
        service.deleteTeamByOwner(new Long[] { 1L, 2L });
    }

    /**
     * Delete team by owner null
     * */
    @Test
    public void deleteTeamByOwner2() {
        service.deleteTeamByOwner(null);
    }

    /**
     * Delete team by owner
     * */
    @Test
    public void deleteTeamByMember() {
        service.deleteTeamByMember(1L, 2L);
    }

    /**
     * Delete team by owner null
     * */
    @Test
    public void deleteTeamByMember2() {
        service.deleteTeamByMember(null, null);
    }
    
    
    @Test
    public void getByProductId() {
        List<Team> list = service.getByProductId(1L);
        assertNotNull(list);
    }
    
    @Test
    public void deleteMemberFromTeam() {
        service.deleteMemberFromTeam(2L, 1L);
    }
}
