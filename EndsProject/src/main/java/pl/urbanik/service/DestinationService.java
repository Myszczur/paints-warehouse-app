package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.Destination;

import java.util.List;

@Service
public interface DestinationService {
    void saveDestination(Destination destination);

    List<Destination> findAllDestinations();

    Destination getDestination(Long id);

    void deleteDestination(Long id);
}
