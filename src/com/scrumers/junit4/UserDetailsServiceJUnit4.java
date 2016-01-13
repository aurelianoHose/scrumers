package com.scrumers.junit4;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import static org.junit.Assert.*;

public class UserDetailsServiceJUnit4 extends AbstractServiceJUnit4 {

    @Autowired
    private UserDetailsService service;

    /**
     * Load uder by name valid
     */
    @Test
    public void loadUserByUsername() {
        assertNotNull(service.loadUserByUsername("system"));
    }

    /**
     * Load uder by name invalid
     */
    @Test(expected = UsernameNotFoundException.class)
    public void loadUserByUsername2() {
        assertNull(service.loadUserByUsername("invalid"));
    }
}
