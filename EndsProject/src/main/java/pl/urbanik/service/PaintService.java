package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.Paints;
import pl.urbanik.model.WzPaint;

import java.util.List;

@Service
public interface PaintService {
    void savePaint(Paints paints);

    List<Paints> getAllPaints();

    Paints getPaint(Long id);

    void deletePaint(Long id);

    void paintIncome(Paints paints);

    void paintRelease(WzPaint wzPaint, Long id);

    Object searchPaints(String id);
}
