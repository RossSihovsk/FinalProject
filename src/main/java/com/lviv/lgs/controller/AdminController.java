package com.lviv.lgs.controller;


import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.service.FacultyService;
import com.lviv.lgs.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    FacultyService facultyService;

    @Autowired
    private SubjectService subjectService;
    

    @GetMapping("/admin_panel")
    public String returnAdminPanel(Model model){

        List<Faculty> allFaculties = facultyService.getAllFaculties();
        model.addAttribute("faculties" , allFaculties);
        model.addAttribute("subjects" , subjectService.findAll());
        return "admin_panel";
    }

    @GetMapping("/admin_panel/{delete}/{id}")
    public ModelAndView deleteFaculty(@PathVariable String delete, @PathVariable Integer id) {
        if (delete.equals("delete")) {
            facultyService.deleteById(id);
            returnAllItems();
        }

        return new ModelAndView("redirect:/admin_panel");
    }

    private ModelAndView returnAllItems() {
        ModelAndView mav = new ModelAndView("admin_panel");
        mav.addObject("facultetItems", facultyService.getAllFaculties());
        return mav;
    }
}
