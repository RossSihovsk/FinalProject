package com.lviv.lgs.service;

import com.lviv.lgs.dao.FacultyRepository;
import com.lviv.lgs.dao.RegForFacultyRepository;
import com.lviv.lgs.models.Faculty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FacultyService {
    @Autowired
    private FacultyRepository facultyRepository;

    public void save(Faculty faculty){
        facultyRepository.save(faculty);
    }

    public List<Faculty> getAllFaculties(){
         return  facultyRepository.findAll();
    }

    public Faculty findById(int id){
        return  facultyRepository.findById(id).get();
    }
}
