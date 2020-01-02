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

    @RequestMapping("/getUpdateTime")
    public ResponseJson<String> getTime(){
        ResponseJson<String> ret=new ResponseJson<>();
        if(context.getAttribute("updateTime")!=null){
            ret.setStatus(200);
            ret.setData(context.getAttribute("updateTime").toString());
        }
        return ret;
    }

    @RequestMapping("/updateWeather")
    public ResponseJson<String> UpdateWeather(){
        ResponseJson<String> ret=new ResponseJson<>();
        //时间是否大于5分钟
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

    @RequestMapping("/queryWeather")
    public ResponseJson<List<Weather>> getWeather(String cityName){
//        System.out.println(cityName);
        ResponseJson<List<Weather>> ret=new ResponseJson<>();
        List<Weather> weathers = weatherService.getWeatherByName(cityName);
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
