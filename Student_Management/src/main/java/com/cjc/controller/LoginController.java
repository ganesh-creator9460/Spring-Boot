package com.cjc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.model.User;
import com.cjc.repository.UserRepository;

@Controller
@RequestMapping
public class LoginController {
	
	@Autowired
	private UserRepository ur;
	
	@GetMapping("/login")
	public String showlogin()
	{
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String username,@RequestParam String password,ModelMap m)
	{
		User u = ur.findByUsername(username);
		
		if(u == null)
		{
			m.addAttribute("error", "Not found Account. Please Register.");
			return "login";
		}
		if(!u.getPassword().equals(password))
		{
			m.addAttribute("password","Wrong Password");
			return "login";
		}
		else
		{
			return "welcome";
		}
	}
	
}
