package pl.urbanik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.urbanik.model.*;
import pl.urbanik.repository.*;
import pl.urbanik.storage.StorageService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@Controller
@RequiredArgsConstructor
@RequestMapping("/paint")
public class PaintsController {

    private final PaintsRepository paintsRepository;
    private final PaintsTypeRepository paintsTypeRepository;
    private final ProjectsRepository projectsRepository;
    private final DestinationRepository destinationRepository;
    private final PzPaintRepository pzPaintRepository;
    private final WzPaintsRepository wzPaintsRepository;


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPaint(Model model) {
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        model.addAttribute("destination", destinationRepository.findAll());
        model.addAttribute("paints", new Paints());

        return "paint/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@Valid Paints paints, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("paintsType", paintsTypeRepository.findAll());
            model.addAttribute("destination", destinationRepository.findAll());
            return "paint/add";
        }
        paintsRepository.save(paints);
        return "redirect:/paint/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("paints", paintsRepository.findAll());
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        return "paint/list";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("paints", paintsRepository.getOne(id));
        return "paint/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        paintsRepository.deleteById(id);
        return "redirect:/paint/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("paints", paintsRepository.findById(id));
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        model.addAttribute("destination", destinationRepository.findAll());
        return "/paint/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editPaint(@Valid Paints paints, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("paintsType", paintsTypeRepository.findAll());
            model.addAttribute("destination", destinationRepository.findAll());
            return "paint/edit";
        }
        paintsRepository.save(paints);
        return "redirect:/paint/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("paints", paintsRepository.getOne(id));
        return "paint/show";
    }

    @RequestMapping(value = "/income", method = RequestMethod.GET)
    public String income(Model model, @RequestParam Long id) {
        model.addAttribute("paints", paintsRepository.getOne(id));
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        model.addAttribute("destination", destinationRepository.findAll());
        return "/paint/income";
    }

    @RequestMapping(value = "/income", method = RequestMethod.POST)
    public String income(@Valid Paints paints, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("paintsType", paintsTypeRepository.findAll());
            model.addAttribute("destination", destinationRepository.findAll());
            return "paint/income";
        }
        Paints paints1 = paintsRepository.getOne(paints.getId());
        PzPaint pzPaint = new PzPaint(paintsRepository.getOne(paints.getId()));
        pzPaint.setQuantity(paints.getQuantity());
        paints.setQuantity(paints1.getQuantity() + paints.getQuantity());
        pzPaint.setPaintsType(paints.getPaintsType());

        paintsRepository.save(paints);
        pzPaintRepository.save(pzPaint);
        return "redirect:/paint/list";
    }

    @RequestMapping(value = "/release", method = RequestMethod.GET)
    public String release(Model model, @RequestParam Long id) {
        model.addAttribute("project", projectsRepository.findAll());
        model.addAttribute("paints", paintsRepository.getOne(id));
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        model.addAttribute("wzpaints", new WzPaint());
        return "/paint/release";
    }

    @RequestMapping(value = "/release", method = RequestMethod.POST)
    public String release(@Valid WzPaint wzPaint, BindingResult result, Model model, @RequestParam Long id) {
        if (result.hasErrors()) {
            model.addAttribute("project", projectsRepository.findAll());
            model.addAttribute("paints", paintsRepository.getOne(id));
            return "paint/release";
        }
        Paints paints1 = paintsRepository.getReferenceById(id);
        WzPaint wzPaint1 = new WzPaint(paints1);
        wzPaint1.setQuantity(wzPaint.getQuantity());
        wzPaint1.setProjects(wzPaint.getProjects());
        paints1.setQuantity(paints1.getQuantity() - wzPaint.getQuantity());
        wzPaint1.setPaintsType(wzPaint.getPaintsType());

        paintsRepository.save(paints1);
        wzPaintsRepository.save(wzPaint1);
        return "redirect:/paint/list";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(@RequestParam String id, Model model) {

        try {
            Pattern compiledPattern = Pattern.compile(id, Pattern.CASE_INSENSITIVE);
            List<Paints> paints = paintsRepository.findAll();
            List<Paints> searchPaints = new ArrayList<>();
            for (Paints paints1 : paints) {
                Matcher matcher = compiledPattern.matcher(paints1.getIngredients());
                if (matcher.find()) {
                    searchPaints.add(paints1);
                }
            }
            model.addAttribute("paints", searchPaints);
            return "paint/list";
        } catch (StringIndexOutOfBoundsException e) {
            return "redirect:/paint/list";
        }
    }
}
