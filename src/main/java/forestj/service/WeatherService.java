package forestj.service;

import forestj.pojo.Weather;

import java.util.Date;
import java.util.List;

public interface WeatherService {
    public List<Weather> getWeatherByName(String name);
    public int updateWeather(Weather weather);
    public int deleteOverdueWeather(Date date);
    public List<Weather> getAllWeather();
}
