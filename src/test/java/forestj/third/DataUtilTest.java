package forestj.third;

import forestj.utils.DataUtil;
import org.junit.jupiter.api.Test;

public class DataUtilTest {
    @Test
    public void testAPI(){
        System.out.println(DataUtil.getWeatherJsonDataByAdcode(310000));
    }


}
