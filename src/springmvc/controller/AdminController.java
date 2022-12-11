package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	// xay dung controller method
	@RequestMapping("/")
	public String showPage()
	
	{
		
		return "list-users";
	}
}