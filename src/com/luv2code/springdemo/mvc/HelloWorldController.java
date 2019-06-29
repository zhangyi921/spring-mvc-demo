package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	// need a controller to show the initial HTML form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	// need a controller to process the HTML form
	@RequestMapping("/processForm")
	public String processForm(HttpServletRequest request, Model model) {
		String theName = request.getParameter("studentName");
		
		theName = theName.toUpperCase();
		
		String result = "Yo! "+theName;
		
		model.addAttribute("message", result);
		return "helloword";
	}
	
	@RequestMapping("/processForm3")
	public String processForm3(
			@RequestParam("studentName") String theName, Model model) {
		
		theName = theName.toUpperCase();
		
		String result = "Hey my friend! "+theName;
		
		model.addAttribute("message", result);
		return "helloword";
	}
}
