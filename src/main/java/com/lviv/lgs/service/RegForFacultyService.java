package com.lviv.lgs.service;

import com.lviv.lgs.dao.RegForFacultyRepository;
import com.lviv.lgs.models.RegForFaculty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegForFacultyService {

    @Autowired
    private RegForFacultyRepository regForFacultyRepository;

    public void save(RegForFaculty regForFaculty){
        regForFacultyRepository.save(regForFaculty);
    }

    public List<RegForFaculty> showAllEntrants(){
        return  regForFacultyRepository.findAll();
    }
}
