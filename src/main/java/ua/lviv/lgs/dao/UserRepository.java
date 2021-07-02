package ua.lviv.lgs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.models.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByEmail(String email);
}
