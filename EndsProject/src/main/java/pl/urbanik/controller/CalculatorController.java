package pl.urbanik.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.urbanik.model.Calculator;
import pl.urbanik.service.CalculatorsService;

import java.util.List;

@Controller
@RequestMapping("/calc")
@Secured("ROLE_ADMIN")
public class CalculatorController {

    private final CalculatorsService calculatorsService;

    public CalculatorController(CalculatorsService calculatorsService) {
        this.calculatorsService = calculatorsService;
    }

    @GetMapping("/pipe")
    public String  calcPipeLength(Calculator calculator, Model model) {
        model.addAttribute("calc", new Calculator());
       List<String> result = calculatorsService.lengthOfSlantingPipe(calculator);
        model.addAttribute("result", result);

        return "/calc/calc";
    }
}

