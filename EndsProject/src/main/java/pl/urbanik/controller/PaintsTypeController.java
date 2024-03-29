package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.urbanik.model.PaintsType;
import pl.urbanik.service.PaintsTypeService;

import javax.validation.Valid;


@Controller
@RequestMapping("/paints-type")
@RequiredArgsConstructor
public class PaintsTypeController {

    private final PaintsTypeService paintsTypeService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        model.addAttribute("paintsType", new PaintsType());
        return "paints-type/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@Valid PaintsType paintsType, BindingResult result) {
        if (result.hasErrors()) {
            return "paints-type/add";
        }
        paintsTypeService.savePaintsType(paintsType);
        return "redirect:/paints-type/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("paintsType", paintsTypeService.listAllPaintsType());
        return "paints-type/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("paintsType", paintsTypeService.getPaintType(id));
        return "paints-type/show";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("paintsType", paintsTypeService.getPaintType(id));
        return "/paints-type/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@Valid PaintsType paintsType, BindingResult result) {
        if (result.hasErrors()) {
            return "paints-type/edit";
        }
        paintsTypeService.savePaintsType(paintsType);
        return "redirect:/paints-type/list";
    }
}
