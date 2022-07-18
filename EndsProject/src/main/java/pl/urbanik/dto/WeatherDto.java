package pl.urbanik.dto;

import lombok.Getter;

@Getter
public class WeatherDto {

    private WeatherMainDto main;
    private WeatherWindDto wind;
}
