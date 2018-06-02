package spring.example.springBootExample.repos;

import org.springframework.data.repository.CrudRepository;
import spring.example.springBootExample.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
