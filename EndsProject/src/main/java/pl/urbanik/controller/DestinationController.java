package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.urbanik.model.Destination;

import pl.urbanik.repository.DestinationRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/destination")
@RequiredArgsConstructor
public class DestinationController {

    private final DestinationRepository destinationRepository;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addDestination(Model model) {
        model.addAttribute("destination", new Destination());
        return "destination/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@Valid Destination destination, BindingResult result) {
        if (result.hasErrors()) {
            return "destination/add";
        }
        destinationRepository.save(destination);
        return "redirect:/destination/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("destination", destinationRepository.findAll());
        return "destination/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("destinations", destinationRepository.getOne(id));
        return "destination/show";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("destination", destinationRepository.getOne(id));
        return "destination/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        destinationRepository.deleteById(id);
        return "redirect:/destination/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("destination", destinationRepository.findById(id));
        return "/destination/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editCategory(@Valid Destination destination, BindingResult result) {
        if (result.hasErrors()) {
            return "destination/edit";
        }
        destinationRepository.save(destination);
        return "redirect:/destination/list";
    }
    @RequestMapping("/greeting")
    public @ResponseBody String greeting() {
        return destinationRepository.greet();
    }
}
