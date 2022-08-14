package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.Calculator;

import java.util.List;
@Service
public interface CalculatorService {

    List<String> lengthOfSlantingPipe(Calculator calculator);
}
