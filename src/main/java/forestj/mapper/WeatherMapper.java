package forestj.mapper;

import forestj.pojo.Weather;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Mapper
@Repository
public interface WeatherMapper {
    public List<Weather> getWeatherByName(String name);
    public int updateWeather(Weather weather);
    public int deleteOverdueWeather(Date date);
    public List<Weather> getAllWeather();
}
