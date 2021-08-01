package com.lviv.lgs.service;

import com.lviv.lgs.dao.SubjectRepository;
import com.lviv.lgs.models.Subject;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;

@SpringBootTest
class SubjectServiceTest {

    @Autowired
    private SubjectService service;

    @MockBean
    private SubjectRepository repository;

    @Test
    void save() {
        Subject subject1 = new Subject( "sub1");
        doReturn(subject1).when(repository).save(any());
        Subject returnedSubject = service.save(subject1);
        // Assert the response
        Assertions.assertNotNull(returnedSubject, "Returned subject is null");
    }

    @Test
    void findAll() {
        Subject subject1 = new Subject( "sub1");
        Subject subject2 = new Subject( "sub2");
        Subject subject3 = new Subject( "sub3");

        doReturn(Arrays.asList(subject1, subject2,subject3)).when(repository).findAll();

        List<Subject> subjects = service.findAll();

        Assertions.assertEquals(3, subjects.size(), "Method should return 2");
    }

    @Test
    void findById() {
        Subject subject1 = new Subject( 1,"sub1");
        doReturn(Optional.of(subject1)).when(repository).findById(1);

        Optional<Subject> returnedSubject= service.findById(1);

        Assertions.assertTrue(returnedSubject.isPresent(), "Not found");

    }
}