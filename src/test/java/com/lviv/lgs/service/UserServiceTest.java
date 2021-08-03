package com.lviv.lgs.service;

import com.lviv.lgs.dao.UserRepository;
import com.lviv.lgs.models.User;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.doReturn;

@SpringBootTest
class UserServiceTest {

    @Autowired
    private UserService service;

    @MockBean
    private UserRepository repository;

//    @Test
//    void loadUserByUsername() {
//        User user = new User(1,"test@gmai.com","test","test");
//        doReturn(Optional.of(user)).when(repository).findByEmail("test@gmai.com");
//
//        Optional<User> returnedUser = Optional.ofNullable(service.loadUserByUsername("test@gmai.com"));
//
//        Assertions.assertTrue(returnedUser.isPresent(), "Not found");
//
//    }

    @Test
    void findUserById() {
        User user = new User(1,"test@gmai.com","test","test");
        doReturn(Optional.of(user)).when(repository).findById((long) 1);

        Optional<User> returnedUser = Optional.ofNullable(service.findUserById((long) 1));

        Assertions.assertTrue(returnedUser.isPresent(), "Not found");
        Assertions.assertSame(returnedUser.get(), user, "Its not the same user");
    }


    @Test
    void deleteUser() {
        User user1 = new User(1,"test@gmai.com","test","test");

        user1.setPassword("testpassword");
        service.saveUser(user1);
        service.deleteUser((long)1);
        Assertions.assertEquals(0,service.allUsers().size(),"There should be null");

    }
}