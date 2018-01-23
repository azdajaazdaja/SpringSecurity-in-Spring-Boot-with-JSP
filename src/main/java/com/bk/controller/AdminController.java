package com.bk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bk.model.User;
import com.bk.service.UserService;

@Controller
@RequestMapping(path = "administrator")
public class AdminController {
	
	@Autowired
	UserService userService;

	@GetMapping("/registerNewUser")
	public ModelAndView registerPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("administrator/registerNewUser");
		return model;
	}
	
	@PostMapping(value = "/registerNewUser")
	public ModelAndView registerUser(@ModelAttribute("newUser") User user, BindingResult result) {
		ModelAndView model = new ModelAndView();
		userService.saveUser(user);
		model.setViewName("administrator/a-home");
		return model;
	}
}
