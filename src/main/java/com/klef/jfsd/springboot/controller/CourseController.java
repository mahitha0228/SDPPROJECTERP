package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.service.CourseService;

@Controller
public class CourseController {
	
	 @Autowired
	 private CourseService courseService;
	  
    @GetMapping("viewallcourse")
	public ModelAndView viewallcourse() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("viewallcourse");
		
		List<Course> courses = courseService.viewallcourse();
		mv.addObject("courselist", courses);
		return mv;
	}

}
