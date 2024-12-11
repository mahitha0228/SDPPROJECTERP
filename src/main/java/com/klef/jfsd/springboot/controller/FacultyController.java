package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ssl.SslProperties.Bundles.Watch.File;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.persistence.criteria.Path;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    // Faculty Login GET method (display login page)
    @GetMapping("facultylogin")
    public ModelAndView facultyLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");
        return mv;
    }

    // Faculty Login POST method (check login credentials)
    @PostMapping("checkfacultylogin")
    public ModelAndView checkFacultyLogin(HttpServletRequest request) {
        // Get login credentials from request
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Check credentials using the service
        Faculty faculty = facultyService.checkFacultyLogin(email, password);
        
        ModelAndView mv = new ModelAndView();
        
        // If faculty is found, login successful
        if (faculty != null) {
            HttpSession session = request.getSession();
            session.setAttribute("faculty", faculty); // Store faculty in session

            mv.setViewName("facultyhome"); // Redirect to faculty home page
        } else {
            mv.setViewName("facultyfail");
            mv.addObject("message", "Login Failed. Invalid email or password."); // Show error message
        }

        return mv;
    }
    
    @GetMapping("facultyhome")
	public ModelAndView facultyhome() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("facultyhome");
		return mv;
	}
    
    @GetMapping("facultyprofile")
	public ModelAndView facultyprofile() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("facultyprofile");
		return mv;
	}


    // Faculty Logout GET method
    @GetMapping("facultylogout")
    public ModelAndView facultyLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate(); // Invalidate session to log out

        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogout"); // Redirect to logout page
        return mv;
    }
    
    @GetMapping("/Certification")
    public String certificationPage() {
        return "Certification"; // Matches the name of the view file
    }
}
