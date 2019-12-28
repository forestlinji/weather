package forestj.service;

import forestj.controller.WeatherController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import java.util.Date;

@Component
public class TimeTaskServiceImpl {
    @Autowired
    private WeatherController weatherController;


    @Scheduled(cron = "0 3 0/8 * * ?")
    public void updateWeather(){
        weatherController.UpdateWeather();
//        System.out.println("更新数据");
    }
}
