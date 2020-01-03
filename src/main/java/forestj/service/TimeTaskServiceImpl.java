package forestj.service;

import forestj.controller.WeatherController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


/**
 * 定时任务
 * 每天0,8,16时自动更新天气数据
 */
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
