package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.urbanik.repository.DestinationRepository;
import pl.urbanik.repository.PaintsTypeRepository;
import pl.urbanik.repository.ProjectsRepository;
import pl.urbanik.repository.PzPaintRepository;

@Controller
@RequestMapping("/pzpaint")
@RequiredArgsConstructor
public class PzPaintController {
    private final PzPaintRepository pzPaintRepository;
    private final PaintsTypeRepository paintsTypeRepository;
    private final DestinationRepository destinationRepository;
    private final ProjectsRepository projectsRepository;

//    public PzPaintController(PzPaintRepository pzPaintRepository, PaintsTypeRepository paintsTypeRepository, DestinationRepository destinationRepository, ProjectsRepository projectsRepository) {
//        this.pzPaintRepository = pzPaintRepository;
//        this.paintsTypeRepository = paintsTypeRepository;
//        this.destinationRepository = destinationRepository;
//        this.projectsRepository = projectsRepository;
//    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("pzpaint", pzPaintRepository.findAll());
        model.addAttribute("paintsType", paintsTypeRepository.findAll());
        return "pzpaint/list";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("pzpaint", pzPaintRepository.getOne(id));
        return "pzpaint/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        pzPaintRepository.deleteById(id);
        return "redirect:/pzpaint/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("pzpaint", pzPaintRepository.getOne(id));
        return "pzpaint/show";
    }
}
