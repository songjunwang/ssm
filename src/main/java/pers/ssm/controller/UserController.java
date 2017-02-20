package pers.ssm.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pers.ssm.model.User;
import pers.ssm.service.UserService;

/**
 * Created by wsj on 2016/7/13.
 */
@Controller
@RequestMapping("/")
public class UserController {
    private static org.slf4j.Logger log = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserService userService;

    @RequestMapping("hello")
    public String helloPage() {
        System.out.println("hello!");
        User user = this.userService.getUserById(2);
        System.out.println(user != null ? user.toString():null);
        return "hello";
    }

    @RequestMapping("spoep")
    public String visitSkipPageOrEvalPage() {
        log.info("visitSkipPageOrEvalPage");
        return "spoep";
    }

    public static void main(String[] args) {
    }
}
