package ua.lviv.lgs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.models.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
    public Optional<User> findByEmail(String email);
}
