package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Parent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ParentRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class ParentServiceImpl implements ParentService{

	@Autowired
	private ParentRepository parentRepository;

	@Override
	public Parent checkparentLogin(String email, String password) {
		return parentRepository.checkparentLogin(email, password);
	}

	@Override
	public String parentRegistration(Parent parent) {
		parentRepository.save(parent);
		return "Parent Registered Successfully";
	}

}