package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService; 
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	
	@GetMapping("studenthome")
	public ModelAndView studenthome() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	@GetMapping("studentprofile")
	public ModelAndView studentprofile() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}
	
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("checkstudentlogin")
	public ModelAndView checkstudentLogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String sname = request.getParameter("sname");
		String spwd = request.getParameter("spwd");
		
		Student student = studentService.checkstudentLogin(sname, spwd);
		
		if(student!=null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("student", student);
			
			mv.setViewName("studenthome");
		}
		else {
			
			mv.setViewName("studentlogin");
			mv.addObject("message", "Login Failed");
			
		}
		return mv;
	}
	@GetMapping("studentlogout")
	public ModelAndView studentlogout() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("studentlogout");
		return mv;
	}
	
	/*@GetMapping("/studentsessionexpiry")
	public String studentsessionexpiry(HttpSession session) {
	    if (session.getAttribute("loggedInUser") == null) {
	        // Redirect to login page if session has expired
	        return "redirect:/login";
	    }
	    // Render the JSP page if session is valid
	    return "studentsessionexpiry";
	}*/



	
	/*@GetMapping("coursereg")
	public ModelAndView coursereg() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("coursereg"); // Ensure this name matches your JSP file
	    return mv;
	}

    @PostMapping("/submitCourse")
    public ModelAndView submitCourse(
            @RequestParam("courseName") String courseName,
            @RequestParam("courseCode") String courseCode,
            @RequestParam("department") String department) {

    
        // Redirect or return a success page.
        ModelAndView mav = new ModelAndView("courseregsuccess"); // `success.jsp` should be in `src/main/webapp/WEB-INF/jsp/`
        mav.addObject("message", "Course Registered Successfully!");
        return mav;
    }
    

	@GetMapping("viewallcourse")
	public ModelAndView viewallcourse() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("viewallcourse");
		
		List<Student> students = studentService.viewallcourse();
		mv.addObject("courselist", students);
		return mv;
	}*/

}

