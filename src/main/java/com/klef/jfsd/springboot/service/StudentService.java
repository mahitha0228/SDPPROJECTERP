package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	
	public String studentRegistration(Student student);
    public Student checkstudentLogin(String email,String password);
    //public String courseRegistration(Student student);
	
	
	
}
