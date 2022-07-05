package ru.akimov.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.akimov.Domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
