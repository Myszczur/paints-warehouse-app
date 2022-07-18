package pl.urbanik.controller;

import io.chucknorris.client.ChuckNorrisClient;
import io.chucknorris.client.Joke;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.urbanik.repository.*;
import pl.urbanik.service.WeatherService;

@Controller
@RequiredArgsConstructor
public class DashboardController {

    private final PaintsTypeRepository paintsTypeRepository;
    private final PaintsRepository paintsRepository;
    private final DestinationRepository destinationRepository;
    private final PzPaintRepository pzPaintRepository;
    private final WzPaintsRepository wzPaintsRepository;
    private final ProjectsRepository projectsRepository;
    private final WeatherService weatherService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String dashboard(Model model) {
        ChuckNorrisClient client = new ChuckNorrisClient();
        Joke joke = client.getRandomJoke();

        model.addAttribute("paints", paintsRepository.findPaintsByq());
        model.addAttribute("wzpaints", wzPaintsRepository.findWZbyReleased());
        model.addAttribute("wzpaints1", wzPaintsRepository.findWeekRelease());
        model.addAttribute("pzpaints", pzPaintRepository.findPZbyIncome());
        model.addAttribute("pzpaints1", pzPaintRepository.findWeekIncome());
        model.addAttribute("projects", projectsRepository.findProjectByEnd());
        model.addAttribute("destinations", destinationRepository.findAll());
        model.addAttribute("paintsTypes", paintsTypeRepository.findAll());
        model.addAttribute("weather" , weatherService.getWeather());
        model.addAttribute("joke" , joke.getValue());
        return "home";
    }
}
