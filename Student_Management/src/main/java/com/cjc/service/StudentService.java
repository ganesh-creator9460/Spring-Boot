package com.cjc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.model.Student;
import com.cjc.repository.StudentRepository;

@Service
public class StudentService {

	
	@Autowired
	StudentRepository sr;
	
	public List<Student> getData()
	{
		return sr.findAll();
	}
}
