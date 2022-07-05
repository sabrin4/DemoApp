package ru.akimov.repos;

import org.springframework.data.repository.CrudRepository;
import ru.akimov.Domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);
}
