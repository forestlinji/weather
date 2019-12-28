package forestj.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Weather {
    private String cityName;
    private Date date;
    private String dayweather;
    private int daytemp;
    private String daywind;
    private String daypower;
    private String nightweather;
    private int nighttemp;
    private String nightwind;
    private String nightpower;
}
