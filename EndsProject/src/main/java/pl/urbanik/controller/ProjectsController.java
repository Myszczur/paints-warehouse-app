package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.urbanik.model.Projects;
import pl.urbanik.repository.ProjectsRepository;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/projects")
@RequiredArgsConstructor
public class ProjectsController {

    private final ProjectsRepository projectsRepository;

//    public ProjectsController(ProjectsRepository projectsRepository) {
//        this.projectsRepository = projectsRepository;
//    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPaint(Model model) {
        model.addAttribute("projects", new Projects());
        return "projects/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@Valid Projects projects, BindingResult result) {
        if (result.hasErrors()) {
            return "projects/add";
        }
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        formatter.format(projects.getStartDate());
        projectsRepository.save(projects);
        return "redirect:/projects/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("projects", projectsRepository.findAll());
        return "projects/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("projects", projectsRepository.getOne(id));
        return "projects/show";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("projects", projectsRepository.getOne(id));
        return "projects/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        projectsRepository.deleteById(id);
        return "redirect:/projects/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("projects", projectsRepository.findById(id));
        return "/projects/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editCategory(@Valid Projects projects, BindingResult result) {
        if (result.hasErrors()) {
            return "projects/edit";
        }
        projectsRepository.save(projects);
        return "redirect:/projects/list";
    }
}
