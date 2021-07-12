package com.lviv.lgs.controller;

import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.RegForFaculty;
import com.lviv.lgs.models.User;
import com.lviv.lgs.service.FacultyService;
import com.lviv.lgs.service.RegForFacultyService;
import com.lviv.lgs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @Autowired
    private FacultyService facultyService;

    @Autowired
    private RegForFacultyService regForFacultyService;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("userForm") @Valid User userForm, BindingResult bindingResult, Model model) {

        System.out.println(userForm.toString());

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        if (!userForm.getPassword().equals(userForm.getPasswordConfirm())){
            model.addAttribute("passwordError", "Паролі не співпадають");
            return "registration";
        }
        if (!userService.saveUser(userForm)){
            model.addAttribute("usernameError", "Такий вже є користувач");
            return "registration";
        }

        return "redirect:/";
    }

    @GetMapping("/register-for-faculty")
    public ModelAndView registerForFaculty(@RequestParam("facultyId") Integer id, @RequestParam("email") String email) {
        Faculty faculty = facultyService.findById(id);
        User user = (User) userService.loadUserByUsername(email);
        RegForFaculty regForFaculty = new RegForFaculty();
        regForFaculty.setFaculty(faculty);
        regForFaculty.setUser(user);
        ModelAndView modelAndView = new ModelAndView("regForFaculty");
        modelAndView.addObject("facultyRegistration", regForFaculty);
        return modelAndView;
    }

    @PostMapping("/register-for-faculty")
    public ModelAndView addRegistration(@Valid @ModelAttribute("facultyRegistration") RegForFaculty regForFaculty,
                                        BindingResult bindingResult) {
        Faculty faculty = facultyService.findById(regForFaculty.getFacultyId());
        User user = (User) userService.loadUserByUsername(regForFaculty.getEmail());
        regForFaculty.setFaculty(faculty);
        regForFaculty.setUser(user);
        regForFacultyService.save(regForFaculty);
        return new ModelAndView("redirect:/home");
    }



}
