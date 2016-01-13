package com.scrumers.junit4;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.mock.web.MockMultipartFile;

import com.scrumers.entity.Role;
import com.scrumers.entity.TeamMember;
import com.scrumers.entity.User;
import com.scrumers.service.UserService;

public class UserServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private UserService service;

    /**
     * Get all users
     * */
    @Test
    public void getUsers() {
        List<User> users = service.getUsers();
        assertFalse(users.isEmpty());
    }

    /**
     * Get all users with valid name
     * */
    @Test
    public void getUsersByName1() {
        List<User> users = service.getUsers("%");
        assertNotNull(users);
    }

    /**
     * Get all users with not valid name
     * */
    @Test
    public void getUsersByName() {
        List<User> users = service.getUsers("user777777");
        assertTrue(users.isEmpty());
    }

    /**
     * Get user by valid id
     * */
    @Test
    public void getUserById1() {
        User user = service.getUser(3L);
        assertNotNull(user);
    }

    /**
     * Get user by not valid id
     * */
    @Test
    public void getUserById2() {
        User user = service.getUser(100000L);
        assertNull(user);
    }

    /**
     * Get user by valid name
     * */
    @Test
    public void getUserByName1() {
        User user = service.getUser("user1");
        assertNotNull(user);
    }

    /**
     * Get user by not valid name
     * */
    @Test
    public void getUserByName2() {
        User user = service.getUser("hghfthth");
        assertNull(user);
    }

    /**
     * Get roles
     * */
    @Test
    public void getRoles() {
        List<Role> roles = service.getRoles();
        assertNotNull(roles);
    }

    /**
     * Get user's roles by valid id
     * */
    @Test
    public void getUserRoles1() {
        List<Role> roles = service.getUsersRoles(1L);
        assertFalse(roles.isEmpty());
    }

    /**
     * Get user's roles by not valid id
     * */
    @Test
    public void getUserRoles() {
        List<Role> roles = service.getUsersRoles(188L);
        assertTrue(roles.isEmpty());
    }

    /**
     * Get user actual organization
     * */
    @Test
    public void getActualOrganizationName() {
        String org = service.getActualOrganizationName(1L);
        assertNotNull(org.isEmpty());
    }

    /**
     * Get user actual product null
     * */
    @Test(expected = NullPointerException.class)
    public void getActualOrganizationName2() {
        String org = service.getActualOrganizationName(null);
        assertNull(org.isEmpty());
    }

    /**
     * Get user actual product null
     * */
    @Test(expected = NullPointerException.class)
    public void getActualProductName2() {
        String org = service.getActualProductName(null);
        assertNull(org.isEmpty());
    }

    /**
     * Get user actual product
     * */
    @Test
    public void getActualProductName() {
        String org = service.getActualProductName(1L);
        assertNotNull(org.isEmpty());
    }

    /**
     * Delete users by valid id
     * */
    @Test
    public void deleteUser1() {
        Long[] ids = { 12L, 3L, 4L };
        service.deleteUser(ids);
    }

    /**
     * Delete users by not valid id
     * */
    @Test
    public void deleteUser2() {
        Long[] ids = null;
        service.deleteUser(ids);
    }

    /**
     * Save empty user
     * */
    @Test(expected = DataIntegrityViolationException.class)
    public void saveUser1() {
        User user = new User();
        service.saveUser(user);
    }

    /**
     * Save(update) user with id
     * */
    @Test
    public void saveUser2() {
        User user = new User();
        user.setId(5L);
        user.setName("test");
        user.setPasswd("test");
        user.setIdCreator(new Long(0));
        service.saveUser(user);
    }

    /**
     * Save new user
     * */
    @Test
    public void saveUser3() {
        User user = new User();
        user.setName("test");
        user.setPasswd("test");
        user.setIdCreator(0L);
        service.saveUser(user);
    }

    /**
     * Save null user
     * */
    @Test(expected = java.lang.NullPointerException.class)
    public void saveUser4() {
        service.saveUser(null);
    }

    /**
     * Save user's password as null user
     * */
    @Test
    public void saveUserPasswd1() {
        service.saveUserPasswd(null);
    }

    /**
     * Save user's password empty user
     * */
    @Test
    public void saveUserPasswd2() {
        User user = new User();
        service.saveUserPasswd(user);
    }

    /**
     * Save user's password valid user
     * */
    @Test
    public void saveUserPasswd3() {
        User user = new User();
        user.setId(2L);
        user.setPasswd("test");
        user.setIdCreator(2L);
        service.saveUserPasswd(user);
    }

    /**
     * Save user whit empty roles
     * */
    @Test
    public void saveUserWithRoles1() {
        User user = new User();
        user.setId(2L);
        user.setName("test");
        user.setPasswd("test");
        user.setIdCreator(new Long(0));
        service.saveUser(user, null, null);
    }

    /**
     * Save user whit valid roles
     * */
    @Test
    public void saveUserWithRoles2() {
        User user = new User();
        user.setId(2L);
        user.setName("test");
        user.setPasswd("test");
        user.setIdCreator(new Long(0));
        Long[] rols = { 1L, 2L };
        service.saveUser(user, rols, null);
    }

    /**
     * Save user whit not valid roles
     * */
    @Test(expected = org.springframework.dao.DataIntegrityViolationException.class)
    public void saveUserWithRoles3() {
        User user = new User();
        user.setId(2L);
        Long[] rols = { 77L, 5L };
        service.saveUser(user, rols, null);
    }

    /**
     * Check password null user
     * */
    @Test
    public void checkPasswd1() {
        assertFalse(service.chekUserPasswd(null));
    }

    /**
     * Check password valid user
     * */
    @Test
    public void checkPasswd2() {
        User user = new User();
        user.setId(2L);
        user.setName("user");
        user.setPasswd("secret");
        assertTrue(service.chekUserPasswd(user));
    }

    /**
     * Check password valid user, not valid password
     * */
    @Test
    public void checkPasswd3() {
        User user = new User();
        user.setId(2L);
        user.setName("user");
        user.setPasswd("seret");
        assertFalse(service.chekUserPasswd(user));
    }

    /**
     * Saving user info You need to add file 0.dat to C:\avatarscrumers
     * */
    @Test
    public void saveUserInfo() {
        User user = new User();
        user.setId(0L);
        user.setIdCreator(0L);
        user.setFname("test");
        user.setSname("test");
        File tmp = new File("C:" + File.separator + "avatarscrumers"
                + File.separatorChar + user.getId() + ".dat");
        InputStream is = null;
        byte[] content = null;
        if (tmp.exists()) {
            try {
                is = new FileInputStream(tmp);
                is.read(content);
            } catch (Exception e) {
            }
        }
        service.saveUserInfo(new MockMultipartFile("testFile", content), user);
    }

    /**
     * Saving user info with null file
     * */
    @Test
    public void saveUserInfo2() {
        User user = new User();
        user.setId(0L);
        user.setIdCreator(0L);
        user.setFname("test");
        user.setSname("test");
        byte[] content = null;
        service.saveUserInfo(new MockMultipartFile("testFile", content), user);
    }

    /**
     * Saving user info with empty user
     * */
    @Test
    public void saveUserInfo3() {
        User user = new User();
        byte[] content = null;
        service.saveUserInfo(new MockMultipartFile("testFile", content), user);
    }

    @Test
    public void getActualIteration() {
        String str = service.getActualIterationName(1L);
        assertNotNull(str);
    }

    @Test
    public void saveUser() {
        User user = new User();
        user.setId(2L);
        user.setName("test");
        user.setPasswd("test");
        user.setIdCreator(new Long(0));
        Long[] rols = { 1L, 2L };
        byte[] content = null;
        service.saveUser(user, rols, new MockMultipartFile("testFile", content));
    }

    @Test
    public void saveUserInfo4() {
        User user = new User();
        service.saveUserInfo(user);
    }

    @Test
    public void getUsersByTeam() {
        List<TeamMember> list = service.getUsersByTeam(1L);
        assertNotNull(list);
    }

    @Test
    public void getTeamRoles() {
        List<Role> list = service.getTeamRoles();
        assertNotNull(list);
    }
    
    @Test
    public void getUsersByProductId() {
        List<User> list = service.readUsersByProductId(1L);
        assertNotNull(list);
    }
}
