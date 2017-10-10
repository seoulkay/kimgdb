package www.ufo79.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrrController {
	@RequestMapping(value = "/TR", method = RequestMethod.GET)
	public String home(Model model) {
		return "login";
	}

}
