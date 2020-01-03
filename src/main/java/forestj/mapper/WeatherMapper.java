package forestj.mapper;

import forestj.pojo.Weather;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Mapper
@Repository
public interface WeatherMapper {
    /**
     * 通过城市名称查询天气
     * @param name 城市名
     * @return 结果列表
     */
    public List<Weather> getWeatherByName(String name);

    /**
     * 更新天气
     * @param weather 需要更新的条目
     * @return
     */
    public int updateWeather(Weather weather);

    /**
     * 删除过期的天气
     * @param date 当前日期
     * @return
     */
    public int deleteOverdueWeather(Date date);

    /**
     * 获取所有城市的天气
     * @return 结果列表
     */
    public List<Weather> getAllWeather();
}
