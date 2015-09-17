package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by troy on 13.08.15.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String name() { return "name"; }

    @RequestMapping(value = "/home")
    public String home() {return "home"; }

    @RequestMapping(value = "/terms")
    public String term() {
        return "terms";
    }

    @RequestMapping(value = "/tags")
    public String tag() { return "tags"; }

    @RequestMapping(value = "/userskills")
    public String userSkills() { return "userskills"; }

    @RequestMapping(value = "/dependencies")
    public String dependencies() { return "dependencies"; }

}
