package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.PzPaint;

import java.util.List;

@Service
public interface PzPaintService {
    List<PzPaint> listAllPz();

    PzPaint getPz(Long id);

    void deletePz(Long id);
}
