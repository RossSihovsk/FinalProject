package com.lviv.lgs.dao;

import com.lviv.lgs.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}