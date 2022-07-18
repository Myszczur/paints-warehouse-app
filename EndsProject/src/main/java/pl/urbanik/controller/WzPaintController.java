package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.urbanik.interfaces.GeneratePdfReport;
import pl.urbanik.model.WzPaint;
import pl.urbanik.repository.*;

import java.io.ByteArrayInputStream;
import java.util.List;

@Controller
@RequestMapping("/wzpaints")
@RequiredArgsConstructor
public class WzPaintController {
    private final WzPaintsRepository wzPaintsRepository;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("wzpaints", wzPaintsRepository.findAll());
        return "wzpaints/list";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("wzpaint", wzPaintsRepository.getOne(id));
        return "wzpaints/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        wzPaintsRepository.deleteById(id);
        return "redirect:/wzpaints/list";
    }


    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("wzpaint", wzPaintsRepository.getOne(id));
        return "wzpaints/show";
    }

    @RequestMapping(value = "/pdfreport", method = RequestMethod.GET,
            produces = MediaType.APPLICATION_PDF_VALUE)
    public ResponseEntity<InputStreamResource> wzReports() {

        var wzPaints = (List<WzPaint>) wzPaintsRepository.findAll();

        ByteArrayInputStream bis = GeneratePdfReport.wzReports(wzPaints);

        var headers = new HttpHeaders();
        headers.add("Content-Disposition", "inline; filename=citiesreport.pdf");

        return ResponseEntity
                .ok()
                .headers(headers)
                .contentType(MediaType.APPLICATION_PDF)
                .body(new InputStreamResource(bis));
    }
}
