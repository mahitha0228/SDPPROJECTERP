package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.repository.CourseRepository;

@Service
public class CourseServiceImpl<Course> implements CourseService{
	
	@Autowired
	private CourseRepository courseRepository;

	@Override
	public List<com.klef.jfsd.springboot.model.Course> viewallcourse() {
		return courseRepository.viewallcourse();
	}
  
	
	 

}
