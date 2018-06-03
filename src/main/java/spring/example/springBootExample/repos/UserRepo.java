package spring.example.springBootExample.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import spring.example.springBootExample.domain.User;

public interface UserRepo extends JpaRepository<User, Long>{
    User findByUsername(String username);
}
