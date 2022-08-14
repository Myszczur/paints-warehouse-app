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
import pl.urbanik.service.ProjectsService;

import javax.validation.Valid;

@Controller
@RequestMapping("/projects")
@RequiredArgsConstructor
public class ProjectsController {

    private final ProjectsService projectsService;


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
        projectsService.saveProject(projects);
        return "redirect:/projects/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("projects", projectsService.listAllProjects());
        return "projects/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("projects", projectsService.getProject(id));
        return "projects/show";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("projects", projectsService.getProject(id));
        return "projects/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        projectsService.deleteProject(id);
        return "redirect:/projects/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("projects", projectsService.getProject(id));
        return "/projects/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@Valid Projects projects, BindingResult result) {
        if (result.hasErrors()) {
            return "projects/edit";
        }
        projectsService.saveProject(projects);
        return "redirect:/projects/list";
    }
}
