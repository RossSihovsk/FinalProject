package com.lviv.lgs.service;

import com.lviv.lgs.dao.SubjectRepository;
import com.lviv.lgs.models.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.Optional;

@Service
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

    @PostConstruct
    public void init() {
        save(new Subject("Ukrainian"));
        save(new Subject("Mathematics"));
        save(new Subject("English"));
        save(new Subject("Biology"));
        save(new Subject("History"));
        save(new Subject("Physics"));
        save(new Subject("Chemistry"));
        save(new Subject("Geography"));
        save(new Subject("Informatics"));
        save(new Subject("literature"));
        save(new Subject("French "));
    }
}
