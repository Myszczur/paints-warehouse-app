package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.urbanik.service.CalculatorService;
import pl.urbanik.model.Calculator;
import pl.urbanik.service.CalculatorsService;

import java.util.List;

@Controller
@RequestMapping("/calc")
@Secured("ROLE_ADMIN")
@RequiredArgsConstructor
public class CalculatorController {

    private final CalculatorService calculatorService;


    @GetMapping("/pipe")
    public String  calcPipeLength(Calculator calculator, Model model) {
        model.addAttribute("calc", new Calculator());
       List<String> result = calculatorService.lengthOfSlantingPipe(calculator);
        model.addAttribute("result", result);

        return "/calc/calc";
    }
}

