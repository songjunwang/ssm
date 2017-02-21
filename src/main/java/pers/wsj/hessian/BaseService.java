package pers.wsj.hessian;

/**
 * Created by wsj on 2016/11/24.
 */
public class BaseService implements BasicApi {
    public String hello(String hello) {
        System.out.println(hello);
        return "你好,"+hello;
    }

    public int sum(int a, int b) {
        return a + b;
    }
}
