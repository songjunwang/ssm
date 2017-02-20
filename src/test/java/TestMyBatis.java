import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pers.ssm.model.User;
import pers.ssm.service.UserService;

/**
 * Created by wsj on 2016/7/11.
 */
@RunWith(SpringJUnit4ClassRunner.class) //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class TestMyBatis {
    private static Logger logger = Logger.getLogger(TestMyBatis.class);
    @Autowired
    private UserService userService;

    @Test
    public void test() throws Exception {
        User user = userService.getUserById(2);
        System.out.println(user.getUsername());
        logger.info("名字："+user.getUsername());
    }

}
