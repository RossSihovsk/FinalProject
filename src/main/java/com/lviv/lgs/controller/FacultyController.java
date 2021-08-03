/**
 * The Final project on "Java Developer" Course in LOGOS IT Academy
 * University portal (Admissions Committee)
 *
 * Class ua.uz.alex.university.controller.FacultyController - controller layer
 *
 * @author Oleksandr Lukhanin
 *
 */

package com.lviv.lgs.controller;


import com.lviv.lgs.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.lviv.lgs.dao.SubjectRepository;
import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.Subject;
import com.lviv.lgs.mapper.FacultyDtoMapper;
import com.lviv.lgs.service.FacultyService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FacultyController {

    @Autowired
    FacultyService facultyService;

    @Autowired
    private SubjectService subjectService;

    @Autowired
    private FacultyDtoMapper facultyDtoMapper;

    @PostMapping("/add_faculty")
    public ModelAndView createNewFaculty(
            @RequestParam MultipartFile facultyLogo,
            @RequestParam String facultyName,
            @RequestParam Integer numberOfStudents,
            @RequestParam String firstSubject,
            @RequestParam String secondSubject,
            @RequestParam String thirdSubject
            ) throws IOException {

        if(firstSubject.equals(secondSubject) | firstSubject.equals(thirdSubject) | secondSubject.equals(thirdSubject)){
            return new ModelAndView("redirect:/admin_panel");
        }
        else {

            List<Subject> subjects = new ArrayList<>();
            subjects.add(new Subject(firstSubject));
            subjects.add(new Subject(secondSubject));
            subjects.add(new Subject(thirdSubject));
            subjects.forEach(System.out::println);
            Faculty faculty = facultyDtoMapper.createEntity(facultyLogo, facultyName, numberOfStudents, subjects);
            facultyService.save(faculty);
            return new ModelAndView("redirect:/admin_panel");
        }
    }




}
