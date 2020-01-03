package forestj.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 *返回的json对象
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseJson<T> {
    /**
     * status本来应该写成枚举的，这里状态码比较少所以偷个懒
     * 200 ok
     * 300 更新数据的时间过短
     * 301 未查询到对应的城市
     */
    private int status;
    private String message;
    private T data;
}
