package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.urbanik.service.PaintsTypeService;
import pl.urbanik.service.PzPaintService;

@Controller
@RequestMapping("/pzpaint")
@RequiredArgsConstructor
public class PzPaintController {
    private final PzPaintService pzPaintService;
    private final PaintsTypeService paintsTypeService;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("pzpaint", pzPaintService.listAllPz());
        model.addAttribute("paintsType", paintsTypeService.listAllPaintsType());
        return "pzpaint/list";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("pzpaint", pzPaintService.getPz(id));
        return "pzpaint/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        pzPaintService.deletePz(id);
        return "redirect:/pzpaint/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("pzpaint", pzPaintService.getPz(id));
        return "pzpaint/show";
    }
}
