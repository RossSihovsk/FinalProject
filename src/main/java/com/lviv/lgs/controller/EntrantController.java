package com.lviv.lgs.controller;

import com.lviv.lgs.models.RegForFaculty;
import com.lviv.lgs.service.RegForFacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EntrantController {

    @Autowired
    private RegForFacultyService regForFacultyService;

    @GetMapping("/show-entrants")
    public ModelAndView showAllEntrants() {
        return new ModelAndView("showRegistrations", "facultyRegistrations",
                regForFacultyService.showAllEntrants());
    }
}
