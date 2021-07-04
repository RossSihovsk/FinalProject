package ua.lviv.lgs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ua.lviv.lgs.dao.UserRepository;
import ua.lviv.lgs.models.User;
import ua.lviv.lgs.models.UserRole;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;


    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPasswordConfirm()));
        user.setUserRole(UserRole.USER);
        userRepository.save(user);
    }
}
