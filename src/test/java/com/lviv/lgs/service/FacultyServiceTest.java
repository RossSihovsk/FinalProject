package com.lviv.lgs.service;

import com.lviv.lgs.dao.FacultyRepository;
import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.Subject;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;

@SpringBootTest
class FacultyServiceTest {

    @MockBean
    private FacultyRepository repository;

    @Autowired
    private FacultyService service;


    @Test()
    void getAllFaculties() {
        List<Subject> subjects = new ArrayList<>();
        subjects.add(new Subject("Sub1"));
        subjects.add(new Subject("Sub2"));
        subjects.add(new Subject("Sub3"));

        Faculty faculty = new Faculty(0,"TestFaculty",12,subjects);
        Faculty faculty2 = new Faculty(1,"TestFaculty1",12,subjects);

        doReturn(Arrays.asList(faculty, faculty2)).when(repository).findAll();
        List<Faculty> faculties = service.getAllFaculties();

        Assertions.assertEquals(2, faculties.size(), "Method should return 2");
    }

    @Test
    void findById() {
        List<Subject> subjects = new ArrayList<>();
        subjects.add(new Subject("Sub1"));
        subjects.add(new Subject("Sub2"));
        subjects.add(new Subject("Sub3"));

        Faculty faculty = new Faculty(0,"TestFaculty",12,subjects);

        doReturn(Optional.of(faculty)).when(repository).findById(1);
        Optional<Faculty> returnedFaculty= Optional.ofNullable(service.findById(1));

        Assertions.assertTrue(returnedFaculty.isPresent(), "Not found");
    }

    @Test
    void deleteById() {
        List<Subject> subjects = new ArrayList<>();
        subjects.add(new Subject("Sub1"));
        subjects.add(new Subject("Sub2"));
        subjects.add(new Subject("Sub3"));

        Faculty faculty = new Faculty(1,"TestFaculty",12,subjects);
        service.save(faculty);
        service.deleteById(1);
        Assertions.assertEquals(0,service.getAllFaculties().size(),"There should be null");
    }
}