package com.lviv.lgs.dao;

import com.lviv.lgs.models.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubjectRepository extends JpaRepository<Subject, Integer> {

    List<Subject> getAllByNameIn(List<String> strings);
}