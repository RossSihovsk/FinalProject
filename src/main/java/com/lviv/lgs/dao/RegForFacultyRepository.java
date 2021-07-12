package com.lviv.lgs.dao;

import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.RegForFaculty;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegForFacultyRepository extends JpaRepository<RegForFaculty, Integer> {
}
