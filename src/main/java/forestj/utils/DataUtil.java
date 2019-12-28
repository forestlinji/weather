package forestj.utils;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

public class DataUtil {
    private static CloseableHttpClient httpClient = HttpClientBuilder.create().build();

    public static String getWeatherJsonDataByAdcode(int adcode){
        HttpGet httpGet = new HttpGet("https://restapi.amap.com/v3/weather/weatherInfo?extensions=all&key=853abeebc7380c7462a23d436d0f9d0e&city="+adcode);
        CloseableHttpResponse response = null;
        try {
            response=httpClient.execute(httpGet);
            return EntityUtils.toString(response.getEntity());
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                response.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
