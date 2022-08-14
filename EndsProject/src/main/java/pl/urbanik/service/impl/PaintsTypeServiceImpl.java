package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.PaintsType;
import pl.urbanik.repository.PaintsTypeRepository;
import pl.urbanik.service.PaintsTypeService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PaintsTypeServiceImpl implements PaintsTypeService {

    private final PaintsTypeRepository paintsTypeRepository;


    @Override
    public void savePaintsType(PaintsType paintsType) {
        paintsTypeRepository.save(paintsType);
    }

    @Override
    public List<PaintsType> listAllPaintsType() {
        return paintsTypeRepository.findAll();
    }

    @Override
    public PaintsType getPaintType(Long id) {
        return paintsTypeRepository.getOne(id);
    }
}
