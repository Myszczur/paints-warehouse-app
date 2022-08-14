package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.urbanik.model.Destination;

import pl.urbanik.repository.DestinationRepository;
import pl.urbanik.service.DestinationService;

import javax.validation.Valid;

@Controller
@RequestMapping("/destination")
@RequiredArgsConstructor
public class DestinationController {

    private final DestinationService destinationService;

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
        destinationService.saveDestination(destination);
        return "redirect:/destination/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("destination", destinationService.findAllDestinations());
        return "destination/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("destinations", destinationService.getDestination(id));
        return "destination/show";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String delMsg(Model model, @PathVariable Long id) {
        model.addAttribute("destination", destinationService.getDestination(id));
        return "destination/del";
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        destinationService.deleteDestination(id);
        return "redirect:/destination/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam Long id) {
        model.addAttribute("destination", destinationService.getDestination(id));
        return "/destination/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editDestination(@Valid Destination destination, BindingResult result) {
        if (result.hasErrors()) {
            return "destination/edit";
        }
        destinationService.saveDestination(destination);
        return "redirect:/destination/list";
    }
}
