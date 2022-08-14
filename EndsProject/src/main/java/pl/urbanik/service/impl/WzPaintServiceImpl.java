package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.WzPaint;
import pl.urbanik.repository.WzPaintsRepository;
import pl.urbanik.service.WzPaintService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WzPaintServiceImpl implements WzPaintService {

    private final WzPaintsRepository wzPaintsRepository;


    @Override
    public List<WzPaint> listAllWz() {
        return wzPaintsRepository.findAll();
    }

    @Override
    public WzPaint getWz(Long id) {
        return wzPaintsRepository.getOne(id);
    }

    @Override
    public void deleteWz(Long id) {
        wzPaintsRepository.deleteById(id);
    }
}
