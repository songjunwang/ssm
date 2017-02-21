import com.caucho.hessian.client.HessianProxyFactory;
import org.junit.Test;
import pers.wsj.hessian.BasicApi;

/**
 * Created by wsj on 2016/11/14.
 */
public class HessianClient {
    @Test
    public void call() throws Exception {
        String url = "http://127.0.0.1:8082/ssm/syncHessian.hessian";
        HessianProxyFactory factory = new HessianProxyFactory();
        BasicApi basic = (BasicApi) factory.create(BasicApi.class, url);
        System.out.println("hello:" + basic.hello("小明"));
        System.out.println("sum:" + basic.sum(100, 100));
    }
}
