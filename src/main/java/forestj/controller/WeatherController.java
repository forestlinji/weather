package forestj.controller;

import com.alibaba.fastjson.JSONObject;
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

    /**
     * 获取最后更新数据的时间
     */
    @RequestMapping("/getUpdateTime")
    public ResponseJson<String> getTime(){
        ResponseJson<String> ret=new ResponseJson<>();
        if(context.getAttribute("updateTime")!=null){
            ret.setStatus(200);
            ret.setData(context.getAttribute("updateTime").toString());
        }
        return ret;
    }

    /**
     * 更新天气数据
     */
    @RequestMapping("/updateWeather")
    public ResponseJson<String> UpdateWeather(){
        ResponseJson<String> ret=new ResponseJson<>();
        //监测离最后一次更新时间是否超过5分钟，若不超过，则不进行更新
        if(System.currentTimeMillis()-((Date)context.getAttribute("updateTime")).getTime()<1000*300){
            ret.setStatus(300);
            ret.setMessage("两次修改间隔时间过短");
            ret.setData(((Date)context.getAttribute("updateTime")).toString());
            return ret;
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
        ret.setStatus(200);
        ret.setData(((Date)context.getAttribute("updateTime")).toString());
        return ret;
    }

    /**
     * 根据城市名查询天气
     * @param cityName 城市名
     */
    @RequestMapping("/queryWeather")
    public ResponseJson<List<Weather>> getWeather(String cityName){
        ResponseJson<List<Weather>> ret=new ResponseJson<>();
        List<Weather> weathers = weatherService.getWeatherByName(cityName);
        if(weathers==null||weathers.size()==0){  //未查询到对应城市
            ret.setStatus(301);
        }
        else{
            ret.setStatus(200);
            ret.setData(weathers);
        }
        return ret;
    }

    /**
     * 查询所有城市的天气
     */
    @RequestMapping("/queryall")
    public ResponseJson<List<Weather>> getAllWeather(){
        ResponseJson<List<Weather>> ret=new ResponseJson<>();
        List<Weather> weathers = weatherService.getAllWeather();
        if(weathers==null||weathers.size()==0){
            ret.setStatus(301);
//            ret.setData(weathers);
        }
        else{
            ret.setStatus(200);
            ret.setData(weathers);
        }
        return ret;
    }
}
