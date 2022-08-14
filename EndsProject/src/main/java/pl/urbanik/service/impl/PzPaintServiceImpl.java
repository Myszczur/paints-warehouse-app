package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.PzPaint;
import pl.urbanik.repository.PzPaintRepository;
import pl.urbanik.service.PzPaintService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PzPaintServiceImpl implements PzPaintService {

    private final PzPaintRepository pzPaintRepository;


    @Override
    public List<PzPaint> listAllPz() {
        return pzPaintRepository.findAll();
    }

    @Override
    public PzPaint getPz(Long id) {
        return pzPaintRepository.getOne(id);
    }

    @Override
    public void deletePz(Long id) {
        pzPaintRepository.deleteById(id);
    }
}
