package com.lviv.lgs.service;

import com.lviv.lgs.dao.RegForFacultyRepository;
import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.RegForFaculty;
import com.lviv.lgs.models.Subject;
import com.lviv.lgs.models.User;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.doReturn;

@SpringBootTest
class RegForFacultyServiceTest {
    @Autowired
    private RegForFacultyService service;

    @MockBean
    private RegForFacultyRepository repository;

    @Test
    void showAllEntrants() {
        User user = new User(1,"test@gmsil.com","test1","test2");
        User user1= new User(2,"test12@gmsil.com","test3","test4");

        List<Subject> subjects = new ArrayList<>();
        subjects.add(new Subject("Sub1"));
        subjects.add(new Subject("Sub2"));
        subjects.add(new Subject("Sub3"));

        Faculty faculty = new Faculty(0,"test1",23,subjects);

        List<Integer> marks = new ArrayList<>();
        marks.add(1);
        marks.add(2);
        marks.add(3);

        RegForFaculty registration1 = new RegForFaculty( faculty, user, marks);
        RegForFaculty registration2 = new RegForFaculty( faculty, user1, marks);

        doReturn(Arrays.asList(registration1, registration2)).when(repository).findAll();
        List<RegForFaculty> registrationForFacultyList = service.showAllEntrants();

        Assertions.assertEquals(2, registrationForFacultyList.size(), "findAll should return 2 registrations");
    }
}