package com.bk.controller;

/**
 * @author Milan Karajovic azdajaazdaja@gmail.com
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@GetMapping({"/", "/login"})
	public ModelAndView login() {
		  ModelAndView model = new ModelAndView();
		  model.setViewName("login");
		  return model;
	}
	
	@GetMapping("/home")
	public ModelAndView homePage() {
		  ModelAndView model = new ModelAndView();
		  model.setViewName("home");
		  return model;
	}
	
	@GetMapping("/administrator/a-home")
	public ModelAndView administratorHome() {
		  ModelAndView model = new ModelAndView();
		  model.setViewName("administrator/a-home");
		  return model;
	}
	
	@GetMapping("/dispatcher/d-home")
	public ModelAndView dispatcherHome() {
		  ModelAndView model = new ModelAndView();
		  model.setViewName("dispatcher/d-home");
		  return model;
	}
	
	@GetMapping("/access-denied")
	public ModelAndView accessDenide() {
		  ModelAndView model = new ModelAndView();
		  model.setViewName("access-denied");
		  return model;
	}	
}
