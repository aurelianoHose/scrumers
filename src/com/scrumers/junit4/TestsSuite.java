package com.scrumers.junit4;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({
    IterationServiceJUnit4.class,
    UserServiceJUnit4.class,
    StoryServiceJUnit4.class,
    ProductServiceJUnit4.class,
    TeamServiceJUnit4.class,
    TaskServiceJUnit4.class,
    OrganizationServiceJUnit4.class,
    UserDetailsServiceJUnit4.class
})
public class TestsSuite {
}
