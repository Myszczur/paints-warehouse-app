package pl.urbanik.service;

import org.springframework.stereotype.Service;
import pl.urbanik.model.WzPaint;

import java.util.List;

@Service
public interface WzPaintService {
    List<WzPaint> listAllWz();

    WzPaint getWz(Long id);

    void deleteWz(Long id);
}
