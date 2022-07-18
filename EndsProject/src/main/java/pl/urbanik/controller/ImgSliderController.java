package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.urbanik.repository.ImgSliderRepository;

@Controller
@RequiredArgsConstructor
public class ImgSliderController {

    private final ImgSliderRepository imgSliderRepository;

    @RequestMapping("/slideshow")
    public String slideShow(Model model) {
        model.addAttribute("slideshow", imgSliderRepository.findAll());
        return "/slideshow/slideshow";
    }
}
