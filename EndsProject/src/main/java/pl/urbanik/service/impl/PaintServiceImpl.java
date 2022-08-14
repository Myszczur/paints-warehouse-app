package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.urbanik.model.Paints;
import pl.urbanik.model.PzPaint;
import pl.urbanik.model.WzPaint;
import pl.urbanik.repository.PaintsRepository;
import pl.urbanik.repository.PzPaintRepository;
import pl.urbanik.repository.WzPaintsRepository;
import pl.urbanik.service.PaintService;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@RequiredArgsConstructor
public class PaintServiceImpl implements PaintService {

    private final PaintsRepository paintsRepository;
    private final PzPaintRepository pzPaintRepository;
    private final WzPaintsRepository wzPaintsRepository;


    @Override
    public void savePaint(Paints paints) {
        paintsRepository.save(paints);
    }

    @Override
    public List<Paints> getAllPaints() {
        return paintsRepository.findAll();
    }

    @Override
    public Paints getPaint(Long id) {
        return paintsRepository.getOne(id);
    }

    @Override
    public void deletePaint(Long id) {
    paintsRepository.deleteById(id);
    }

    @Override
    public void paintIncome(Paints paints) {
        Paints paints1 = paintsRepository.getOne(paints.getId());
        PzPaint pzPaint = new PzPaint(paintsRepository.getOne(paints.getId()));
        pzPaint.setQuantity(paints.getQuantity());
        paints.setQuantity(paints1.getQuantity() + paints.getQuantity());
        pzPaint.setPaintsType(paints.getPaintsType());
        paintsRepository.save(paints);
        pzPaintRepository.save(pzPaint);
    }

    @Override
    public void paintRelease(WzPaint wzPaint, Long id) {
        Paints paints1 = paintsRepository.getReferenceById(id);
        WzPaint wzPaint1 = new WzPaint(paints1);
        wzPaint1.setQuantity(wzPaint.getQuantity());
        wzPaint1.setProjects(wzPaint.getProjects());
        paints1.setQuantity(paints1.getQuantity() - wzPaint.getQuantity());
        wzPaint1.setPaintsType(wzPaint.getPaintsType());
        paintsRepository.save(paints1);
        wzPaintsRepository.save(wzPaint1);
    }

    @Override
    public Object searchPaints(String id) {
        Pattern compiledPattern = Pattern.compile(id, Pattern.CASE_INSENSITIVE);
        List<Paints> paints = paintsRepository.findAll();
        List<Paints> searchPaints = new ArrayList<>();
        for (Paints paints1 : paints) {
            Matcher matcher = compiledPattern.matcher(paints1.getIngredients());
            if (matcher.find()) {
                searchPaints.add(paints1);
            }
        }
        return searchPaints;
    }

}
