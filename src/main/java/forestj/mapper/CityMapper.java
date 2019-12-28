package forestj.mapper;

import forestj.pojo.City;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CityMapper {
    public List<City> getAllCities();
//    public City getCityByName(String cityName);
}
