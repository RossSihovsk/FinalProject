package com.lviv.lgs.service;

import com.lviv.lgs.dao.SubjectRepository;
import com.lviv.lgs.models.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class SubjectService {
    @Autowired
    private SubjectRepository subjectRepository;

    public Subject save(Subject subject) {
        return subjectRepository.save(subject);
    }

    public List<Subject> findAll() {
        return subjectRepository.findAll();
    }

    public Optional<Subject> findById(Integer id) {
        return subjectRepository.findById(id);
    }
}
