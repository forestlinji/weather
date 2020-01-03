package forestj.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class DataUtil {
    private static CloseableHttpClient httpClient = HttpClientBuilder.create().build();
    //远程接口的key，通过配置文件读取
    private static String mykey;
    @Value("${key}")
    public void setMykey(String key){
        mykey=key;
    }
    /**
     * 根据对应的adcode调用远程接口
     * @param adcode
     * @return 查询结果的json串
     */
    public static String getWeatherJsonDataByAdcode(int adcode){
        HttpGet httpGet = new HttpGet("https://restapi.amap.com/v3/weather/weatherInfo?extensions=all&key="+mykey+"&city="+adcode);
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
