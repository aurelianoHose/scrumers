package com.scrumers.service;

import java.io.InputStream;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.scrumers.entity.Role;
import com.scrumers.entity.TeamMember;
import com.scrumers.entity.User;

public interface UserService {

    public InputStream getImage(Long id);

    User getUser(Long id);

    User getUser(String login);

    String getActualOrganizationName(Long oid);

    String getActualProductName(Long pid);

    String getActualIterationName(Long iid);

    Boolean chekUserPasswd(User user);

    void saveUser(User user);

    void saveUserPasswd(User user);

    void saveUser(User user, Long[] rids, MultipartFile file);

    void deleteUser(Long[] id);

    List<User> readUsersByProductId(Long pid);

    List<User> getUsers();

    List<User> getUsers(String name);

    List<TeamMember> getUsersByTeam(Long tid);

    List<Role> getRoles();

    List<Role> getTeamRoles();

    List<Role> getUsersRoles(Long id);

    void saveUserInfo(User user);

    void saveUserInfo(MultipartFile file, User user);
}
