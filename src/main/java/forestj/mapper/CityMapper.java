package forestj.mapper;

import forestj.pojo.City;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CityMapper {
    /**
     * 获取城市名及其对应的adcode
     * @return 结果列表
     */
    public List<City> getAllCities();
}
