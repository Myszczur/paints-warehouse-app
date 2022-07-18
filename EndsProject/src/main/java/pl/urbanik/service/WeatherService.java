package pl.urbanik.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import pl.urbanik.model.Weather;
import pl.urbanik.model.WeatherClient;

@Service
@Slf4j
@RequiredArgsConstructor
public class WeatherService {

    private final WeatherClient weatherClient;

    public Weather getWeather() {
        return weatherClient.getWeatherForCity("rzeszow");

    }




}
