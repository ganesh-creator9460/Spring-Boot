package com.cjc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjc.model.Student;
import com.cjc.repository.StudentRepository;
import com.cjc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentRepository sr;
	@Autowired
	private StudentService ss;
	
	@GetMapping("/data")
	public String data()
	{
		return "data";
	}
	
	@PostMapping("/data")
	public String addData(@ModelAttribute Student s,ModelMap m)
	{
		
		boolean b = sr.existsByRollno(s.getRollno());
		
		if(b)
		{
			m.addAttribute("error","Rollno is already Exist");
			
			return "data";
		}
		
		else
		{
			
			sr.save(s);
			m.addAttribute("rollno", s.getRollno());
			m.addAttribute("name", s.getName());
			m.addAttribute("city", s.getCity());
			m.addAttribute("date", s.getDate());
			m.addAttribute("mobile", s.getMobile());
			m.addAttribute("email", s.getEmail());
			m.addAttribute("course", s.getCourse());
			m.addAttribute("gender", s.getGender());
			return "success";
		}
	
	}
	
	@PostMapping("/table")
	public String getData(ModelMap m)
	{
		List<Student> list=ss.getData();
		m.addAttribute("get",list);
		return "table";
	}
	
	@RequestMapping("/click")
	public String log() {
		return "welcome";
	}
	@RequestMapping("/add")
	public String add() {
		return "data";
	}
}
