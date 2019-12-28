package forestj.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import forestj.mapper.CityMapper;
import forestj.mapper.WeatherMapper;
import forestj.pojo.City;
import forestj.pojo.ResponseJson;
import forestj.pojo.Weather;
import forestj.service.CityServideImpl;
import forestj.service.WeatherServiceImpl;
import forestj.utils.DataUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletContext;
import java.util.Date;
import java.util.List;

@RestController
@CrossOrigin
public class WeatherController {
    @Autowired
    private CityServideImpl cityService;
    @Autowired
    private WeatherServiceImpl weatherService;
    @Autowired
    private ServletContext context;

    @RequestMapping("/getUpdateTime")
    public String getTime(){
        return JSONObject.toJSONString(context.getAttribute("updateTime").toString());
    }

    @RequestMapping("/updateWeather")
    public String UpdateWeather(){
        ResponseJson ret=null;
        //时间是否大于5分钟
        if(System.currentTimeMillis()-((Date)context.getAttribute("updateTime")).getTime()<1000*300){
            ret=new ResponseJson(300,((Date)context.getAttribute("updateTime")).toString());
            return JSONObject.toJSONString(ret);
        }
        context.setAttribute("updateTime",new Date(System.currentTimeMillis()));
        //调用远端接口并更新数据库
        List<City> cities = cityService.getAllCities();
        for (City city : cities) {
            String json= DataUtil.getWeatherJsonDataByAdcode(city.getAdcode());
            List<Weather> weathers = JSONObject.parseObject(json).getJSONArray("forecasts").getJSONObject(0).getJSONArray("casts").toJavaList(Weather.class);
            for (Weather weather : weathers) {
                weather.setCityName(city.getCityName());
                weatherService.updateWeather(weather);
            }
        }
        //删除过期数据
        weatherService.deleteOverdueWeather(new Date(System.currentTimeMillis()-24*3600*1000));
        ret=new ResponseJson(200,((Date)context.getAttribute("updateTime")).toString());
        return JSONObject.toJSONString(ret);
    }

    @RequestMapping("/queryWeather")
    public String getWeather(String cityName){
        System.out.println(cityName);
        List<Weather> weathers = weatherService.getWeatherByName(cityName);
        if(weathers==null||weathers.size()==0){
            return "";
        }
        else return JSONArray.toJSONStringWithDateFormat(weathers, "yyyy-MM-dd");
    }
}
