package pl.urbanik.model;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class Weather {

    private float temperature;
    private int pressure;
    private int humidity;
    private float windSpeed;
}
