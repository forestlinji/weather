package forestj.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Weather {
    private String cityName;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
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
