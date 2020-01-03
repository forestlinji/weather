package forestj.service;

import forestj.controller.WeatherController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import java.util.Date;

/**
 * 服务启动时自动更新数据
 */
@Component
@Order(2)
public class InitServiceImpl implements CommandLineRunner {
    @Autowired
    private ServletContext context;

    @Autowired
    private WeatherController weatherController;


    @Override
    public void run(String... args) throws Exception {
        context.setAttribute("updateTime",new Date(0));
        weatherController.UpdateWeather();
    }
}
