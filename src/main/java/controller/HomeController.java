package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by troy on 13.08.15.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String name() {
        return "WEB-INF/jsp/name.jsp";
    }

    @RequestMapping(value = "/terms")
    public String test() {
        return "WEB-INF/jsp/terms.jsp";
    }

    @RequestMapping(value = "/home")
    public String home() {
        return "WEB-INF/jsp/home.jsp";
    }

}
