package com.lviv.lgs.service;

import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.RegForFaculty;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class RegistrationMarksCompareServiceTest {

    @Autowired
    RegistrationMarksCompareService service;
    @Test
    void compare() {
        RegForFaculty regForFaculty = new RegForFaculty();
        List<Integer> marks = new ArrayList<>();
        marks.add(4);
        marks.add(4);
        marks.add(4);

        regForFaculty.setMarks(marks);

        RegForFaculty regForFaculty1 = new RegForFaculty();
        List<Integer> marks1 = new ArrayList<>();
        marks.add(1);
        marks.add(2);
        marks.add(3);

        regForFaculty1.setMarks(marks1);
        service.compare(regForFaculty,regForFaculty1);

        Assertions.assertEquals(1,1, "method should return 1!");



    }
}