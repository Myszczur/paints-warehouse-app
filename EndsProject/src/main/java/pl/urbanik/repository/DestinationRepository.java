package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.Destination;

@Repository
public interface DestinationRepository extends JpaRepository<Destination, Long> {

    default String greet() {
        return "Hello, World";
    }
}
