package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.Destination;
import pl.urbanik.repository.DestinationRepository;
import pl.urbanik.service.DestinationService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DestinationServiceImpl implements DestinationService {

    private final DestinationRepository destinationRepository;

    @Override
    public void saveDestination(Destination destination) {
        destinationRepository.save(destination);
    }

    @Override
    public List<Destination> findAllDestinations() {
        return destinationRepository.findAll();
    }

    @Override
    public Destination getDestination(Long id) {
        return destinationRepository.getOne(id);
    }

    @Override
    public void deleteDestination(Long id) {
        destinationRepository.deleteById(id);
    }
}
