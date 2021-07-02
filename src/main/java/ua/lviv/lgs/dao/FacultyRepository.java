package ua.lviv.lgs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.models.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Integer> {
}
