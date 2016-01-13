package com.scrumers.junit4;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;

import com.scrumers.entity.Organization;
import com.scrumers.service.OrganizationService;

public class OrganizationServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private OrganizationService service;

    /**
     * Save org
     * */
    @Test
    public void saveOrganization() {
        Organization org = new Organization();
        org.setName("TestOrg");
        org.setNumOfProjects(4L);
        org.setNumOfTeams(1L);
        org.setIdCreator(0L);
        service.saveOrganization(org);
    }

    /**
     * Save org empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveOrganization2() {
        Organization org = new Organization();
        service.saveOrganization(org);
    }

    /**
     * Save org
     * */
    @Test
    public void saveOrganizationWithUserId() {
        Organization org = new Organization();
        org.setName("TestOrg");
        org.setNumOfProjects(4L);
        org.setNumOfTeams(1L);
        org.setIdCreator(0L);
        service.saveOrganizationWithUserId(org);
    }

    /**
     * Save org empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveOrganizationWithUserId2() {
        Organization org = new Organization();
        service.saveOrganizationWithUserId(org);
    }

    /**
     * Add team to an organization
     * */
    @Test
    public void addTeamToAnOrganization() {
        service.addTeamToAnOrganization(1L, 7L);
    }

    /**
     * Add team to an organization with invalid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTeamToAnOrganization2() {
        service.addTeamToAnOrganization(-1L, -1L);
    }

    /**
     * Add team to an organization with null
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addTeamToAnOrganization3() {
        service.addTeamToAnOrganization(null, null);
    }

    /**
     * Add team to an organization
     * */
    @Test
    public void addProductToAnOrganization() {
        service.addProductToAnOrganization(1L, 5L);
    }

    /**
     * Add team to an organization with invalid
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addProductToAnOrganization2() {
        service.addProductToAnOrganization(-1L, -1L);
    }

    /**
     * Add team to an organization with null
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void addProductToAnOrganization3() {
        service.addProductToAnOrganization(null, null);
    }

    /**
     * Add team to an organization
     * */
    @Test
    public void updateActual() {
        service.updateActual(1L, 20L);
    }

    /**
     * Add team to an organization with invalid
     * */
    @Test
    public void updateActual2() {
        service.updateActual(-1L, -1L);
    }

    /**
     * Add team to an organization with null
     * */
    @Test
    public void updateActual3() {
        service.updateActual(null, null);
    }

    /**
     * Get org
     * */
    @Test
    public void getOrganization() {
        Organization org = service.getOrganization(1L);
        assertNotNull(org);
    }

    /**
     * Get org by null id
     * */
    @Test
    public void getOrganization2() {
        Organization org = service.getOrganization(null);
        assertNull(org);
    }

    /**
     * Get orgs
     * */
    @Test
    public void getOrganizations() {
        List<Organization> orgs = service.getOrganizations();
        assertNotNull(orgs);
    }

    /**
     * Get orgs
     * */
    @Test
    public void getOrganizationsByTeamId() {
        List<Organization> orgs = service.getOrganizationsByTeamId(1L);
        assertNotNull(orgs);
    }

    /**
     * Get orgs by null id
     * */
    @Test
    public void getOrganizationsByTeamId2() {
        List<Organization> orgs = service.getOrganizationsByTeamId(null);
        assertTrue(orgs.isEmpty());
    }

    /**
     * Get orgs
     * */
    @Test
    public void getOrganizationsByUserId() {
        List<Organization> orgs = service.getOrganizationsByUserId(1L);
        assertNotNull(orgs);
    }

    /**
     * Get orgs by null id
     * */
    @Test
    public void getOrganizationsByUserId2() {
        List<Organization> orgs = service.getOrganizationsByUserId(null);
        assertTrue(orgs.isEmpty());
    }

    /**
     * Get orgs
     * */
    @Test
    public void getOrganizationsByProductId() {
        List<Organization> orgs = service.getOrganizationsByProductId(1L);
        assertNotNull(orgs);
    }

    /**
     * Get orgs by null id
     * */
    @Test
    public void getOrganizationsByProductId2() {
        List<Organization> orgs = service.getOrganizationsByProductId(null);
        assertTrue(orgs.isEmpty());
    }

    /**
     * Update org
     * */
    @Test
    public void updateOrganizationWithUserId() {
        Organization org = new Organization();
        org.setId(1L);
        org.setName("TestOrg");
        org.setNumOfProjects(4L);
        org.setNumOfTeams(1L);
        org.setIdCreator(0L);
        service.saveOrganizationWithUserId(org);
    }

    /**
     * Update org empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void updateOrganizationWithUserId2() {
        Organization org = new Organization();
        org.setId(1L);
        service.saveOrganizationWithUserId(org);
    }

    /**
     * Update org
     * */
    @Test
    public void updateOrganization() {
        Organization org = new Organization();
        org.setId(1L);
        org.setName("TestOrg");
        org.setNumOfProjects(4L);
        org.setNumOfTeams(1L);
        org.setIdCreator(0L);
        service.saveOrganization(org);
    }

    /**
     * Update org empty
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void updateOrganization2() {
        Organization org = new Organization();
        org.setId(1L);
        service.saveOrganization(org);
    }

    /**
     * Delete org
     * */
    @Test
    public void deleteOrganization() {
        service.deleteOrganizationAsAMember(2L, 1L);
    }

    /**
     * Delete org null
     * */
    @Test
    public void deleteOrganization2() {
        service.deleteOrganizationAsAMember(null, null);
    }

    /**
     * Delete as an owner
     * */
    @Test
    public void deleteOrganizationAsAnOwner() {
        service.deleteOrganizationAsAnOwner(new Long[] { 1L, 2L, 3L });
    }

    /**
     * Delete as an owner null
     * */
    @Test
    public void deleteOrganizationAsAnOwner2() {
        service.deleteOrganizationAsAnOwner(null);
    }
}
