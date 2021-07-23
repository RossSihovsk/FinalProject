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
    private SubjectRepository subjectRepository;

    @Autowired
    private FacultyDtoMapper facultyDtoMapper;

    @PostMapping("/add_faculty")
    public ModelAndView createFaculty (
            @RequestParam MultipartFile facultyLogo,
            @RequestParam String facultyName,
            @RequestParam Integer numberOfStudents,
            @RequestParam String firstSubject,
            @RequestParam String secondSubject,
            @RequestParam String thirdSubject
            ) throws IOException {


        List<Subject> subjects = new ArrayList<>();
        subjects.add(new Subject(firstSubject));
        subjects.add(new Subject(secondSubject));
        subjects.add(new Subject(thirdSubject));
        subjects.stream().forEach(System.out::println);
        Faculty faculty = facultyDtoMapper.createEntity(facultyLogo, facultyName, numberOfStudents, subjects);
        facultyService.save(faculty);
        return new ModelAndView("redirect:/admin_panel");
    }

    @GetMapping("/admin_panel")
    public String getAdminPanel(Model model){
        List<Faculty> allFaculties = facultyService.getAllFaculties();
        model.addAttribute("faculties" , allFaculties);
        model.addAttribute("subjects" , subjectRepository.findAll());
        return "admin_panel";
    }

    @GetMapping("/admin_panel/{delete}/{id}")
    public ModelAndView deleteFaculty(@PathVariable String delete, @PathVariable Integer id) {
        if (delete.equals("delete")) {
            facultyService.deleteById(id);
            getFacultyItems();
        }
        //facultyService.deleteById(id);

        return new ModelAndView("redirect:/admin_panel");
    }

    private ModelAndView getFacultyItems () {
        ModelAndView mav = new ModelAndView("admin_panel");
        mav.addObject("facultetItems", facultyService.getAllFaculties());
        return mav;
    }


}
