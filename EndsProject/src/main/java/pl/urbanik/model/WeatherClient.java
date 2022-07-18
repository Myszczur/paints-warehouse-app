package pl.urbanik.model;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.urbanik.dto.WeatherDto;

@Component
public class WeatherClient {

    private final RestTemplate restTemplate = new RestTemplate();
    private static final String URL_OF_WEATHER = "https://api.openweathermap.org/data/2.5/";
    private static final String API_KEY = "a54990bc0e13929bce86a3fd801a7024";

    public Weather getWeatherForCity(String city) {
        WeatherDto weatherDto =  callGetMethod("weather?q={city}&appid={api}&units=metric&lang=pl",
                WeatherDto.class,
                city, API_KEY);
        return Weather.builder()
                .temperature(weatherDto.getMain().getTemp())
                .pressure(weatherDto.getMain().getPressure())
                .windSpeed(weatherDto.getWind().getSpeed())
                .humidity(weatherDto.getMain().getHumidity())
                .build();
    }

    private <T> T callGetMethod(String url, Class<T> responseType, Object... objects) {
        return restTemplate.getForObject(URL_OF_WEATHER + url, responseType, objects);
    }
}
