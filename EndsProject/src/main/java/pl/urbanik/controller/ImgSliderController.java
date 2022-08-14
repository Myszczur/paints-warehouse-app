package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.urbanik.service.ImgSliderService;

@Controller
@RequiredArgsConstructor
public class ImgSliderController {

    private final ImgSliderService imgSliderService;

    @RequestMapping("/slideshow")
    public String slideShow(Model model) {
        model.addAttribute("slideshow", imgSliderService.findAllImages());
        return "/slideshow/slideshow";
    }
}
