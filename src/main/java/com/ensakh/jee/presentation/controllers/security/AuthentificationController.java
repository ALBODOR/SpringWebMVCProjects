package com.ensakh.jee.presentation.controllers.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.services.security.AuthentificationService;

@Controller
public class AuthentificationController {
	
	@Autowired
	private AuthentificationService authentificationService;

	@RequestMapping(value = {"", "login"}, method = RequestMethod.GET)
	public String login() {		
		return "login";
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String admin(Model model) {		
		return "admin";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {		
		return "admin";
	}
	
}
