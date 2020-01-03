package forestj.third;

import forestj.mapper.CityMapper;
import forestj.mapper.WeatherMapper;
import forestj.pojo.City;
import forestj.pojo.Weather;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MapperTest {
    @Autowired
    public CityMapper cityMapper;
    @Autowired
    public WeatherMapper weatherMapper;

    @Test
    public void testCityMapper(){
        List<City> allCities = cityMapper.getAllCities();
        System.out.println(allCities);
    }

    @Test
    public void testWeatherMapper(){
        //精准查询
        List<Weather> list1 = weatherMapper.getWeatherByName("福州市");
        //测试模糊查询
        List<Weather> list2 = weatherMapper.getWeatherByName("福州");
        System.out.println(list1);
        System.out.println(list2);
    }
}
