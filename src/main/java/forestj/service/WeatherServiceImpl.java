package forestj.service;

import forestj.mapper.WeatherMapper;
import forestj.pojo.Weather;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class WeatherServiceImpl implements WeatherService{
    @Autowired
    private WeatherMapper weatherMapper;
    @Override
    public List<Weather> getWeatherByName(String name) {
        return weatherMapper.getWeatherByName(name);
    }

    @Override
    public int updateWeather(Weather weather) {
        return weatherMapper.updateWeather(weather);
    }

    @Override
    public int deleteOverdueWeather(Date date) {
        return weatherMapper.deleteOverdueWeather(date);
    }

    @Override
    public List<Weather> getAllWeather() {
        return weatherMapper.getAllWeather();
    }
}
