package com.lviv.lgs.dao;

import com.lviv.lgs.models.Faculty;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface FacultyRepository extends JpaRepository<Faculty, Integer> {
}
