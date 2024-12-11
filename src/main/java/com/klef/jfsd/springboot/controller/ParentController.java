package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Parent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.ParentService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ParentController {
	
	@Autowired
	private ParentService parentService; 
	
	@GetMapping("parentreg")
	public ModelAndView parentreg() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("parentreg");
		return mv;
	}
	
	@GetMapping("parenthome")
	public ModelAndView parenthome() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("parenthome");
		return mv;
	}
	
	@GetMapping("parentprofile")
	public ModelAndView parentProfile(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // Retrieve existing session, don't create a new one
	    ModelAndView mv = new ModelAndView();
	    Parent parent = (session != null) ? (Parent) session.getAttribute("parent") : null;

	    if (parent == null) {
	        mv.setViewName("parentlogin"); // Redirect to login if parent is null
	        mv.addObject("message", "Session expired. Please log in again.");
	    } else {
	        mv.setViewName("parentprofile");
	        mv.addObject("parent", parent);
	    }

	    return mv;
	}

	
	
	@PostMapping("checkparentlogin")
	public ModelAndView checkparentLogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String pname = request.getParameter("pname");
		String ppwd = request.getParameter("ppwd");
		
		Parent parent = parentService.checkparentLogin(pname, ppwd);
		
		if(parent!=null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("parent", parent);
			
			mv.setViewName("parenthome");
		}
		else {
			
			mv.setViewName("parentlogin");
			mv.addObject("message", "Login Failed");
			
		}
		return mv;
	}
	
	@PostMapping("insertparent")
	public ModelAndView insertparent(HttpServletRequest request) {
		
		String name=request.getParameter("pname");
		String gender=request.getParameter("pgender");
		String dob=request.getParameter("pdob");
		String email=request.getParameter("pemail");
		String location=request.getParameter("plocation");
		String contact=request.getParameter("pcontact");
		String password=request.getParameter("ppwd");
		
		Parent parent = new Parent();
		parent.setName(name);
		parent.setGender(gender);
		parent.setDateofbirth(dob);
		parent.setEmail(email);
		parent.setLocation(location);
		parent.setContact(contact);
		parent.setPassword(password);
		
		String message = parentService.parentRegistration(parent);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("parentregsuccess");
		mv.addObject("message", message);
		
		return mv;
		
	}
	    
	@GetMapping("parentlogin")
	public ModelAndView parentLogin() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("parentlogin");
		return mv;
	}

}

