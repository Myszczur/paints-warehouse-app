package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.urbanik.model.Weather;
import pl.urbanik.service.WeatherService;

@Controller
@RequiredArgsConstructor
public class WeatherController {

    private final WeatherService weatherService;

    @RequestMapping(value = "/weather", method = RequestMethod.GET)
    @ResponseBody
    public Weather getWeather() {
        return weatherService.getWeather();
    }
}
