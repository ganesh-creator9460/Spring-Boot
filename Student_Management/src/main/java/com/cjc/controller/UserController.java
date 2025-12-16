package com.cjc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.model.User;
import com.cjc.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository ur;
	
	@GetMapping("/register")
	public String showregister()
	{
		return "register";
	}
	
	@PostMapping("/register")
	public String register(@RequestParam String username,@RequestParam String password,ModelMap m)
	{
		
		if(ur.findByUsername(username) != null)
		{
			m.addAttribute("error",username+" and "+password+" already register");
			return "register";
		}
		else
		{
			User u = new User();
			u.setUsername(username);
			u.setPassword(password);
			
			ur.save(u);
			
			m.addAttribute("message", "Registration Successful! Please Login.");
			
			return "login";
		}
	}
	
}
