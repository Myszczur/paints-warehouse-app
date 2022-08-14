package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.PaintsType;
import java.util.List;

@Service
public interface PaintsTypeService {
    void savePaintsType(PaintsType paintsType);

    List<PaintsType> listAllPaintsType();

    PaintsType getPaintType(Long id);
}
