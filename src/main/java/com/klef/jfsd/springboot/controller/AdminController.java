package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CourseService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private FacultyService facultyService;

    // Display Admin Login Page
    @GetMapping("adminlogin")
    public ModelAndView adminLogin() {
        ModelAndView mv = new ModelAndView("adminlogin");
        return mv;
    }

    // Admin Login Validation
    @PostMapping("checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.checkAdminLogin(auname, apwd);

        if (admin != null) {
            mv.setViewName("adminhome");
            long count = adminService.studentcount();
            mv.addObject("count", count);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Admin Home Page
    @GetMapping("/adminhome")
    public ModelAndView adminHome() {
        ModelAndView mv = new ModelAndView("adminhome");
        long count = adminService.studentcount();
        mv.addObject("count", count);
        return mv;
    }


    

        // View All Students
        @GetMapping("/viewallstudents")
        public ModelAndView viewAllStudents() {
            ModelAndView mv = new ModelAndView("viewallstudents");
            List<Student> studentList = adminService.viewAllStudents();
            mv.addObject("studentlist", studentList);
            long count = adminService.studentcount();
            mv.addObject("count", count);
            return mv;
        }

        // Update student (GET request to fetch data for the form)
        @GetMapping("/updatestudent")
        public String updatestudent(@RequestParam("id") int id, Model model) {
            Student student = adminService.getStudentById(id); // Fetch student by ID
            if (student == null) {
                throw new IllegalArgumentException("Invalid Student ID: " + id);
            }
            model.addAttribute("student", student); // Add the student to the model
            return "updatestudent"; // JSP file name for the update form
        }

        @GetMapping("/updatestudent/{id}")
        public String showUpdateStudentForm(@PathVariable("id") int id, Model model) {
            Student student = adminService.getStudentById(id); // Fetch student by ID
            if (student == null) {
                throw new IllegalArgumentException("Invalid Student ID: " + id);
            }
            model.addAttribute("student", student); // Add the student to the model
            return "updatestudent"; // JSP file name for the update form
        }
        
        @PostMapping("/updatestudent/{id}")
        public String updateStudent(@PathVariable("id") int id, @ModelAttribute Student student) {
            student.setId(id); // Set the ID of the student
            adminService.updatestudent(student); // Call service to update the student
            return "redirect:/viewallstudents"; // Redirect to student list
        }

        // To handle the form submission and update the student
        @PostMapping("/updatestudent")
        public String updatestudent(@ModelAttribute Student student) {
            adminService.updatestudent(student); // Call service to update student
            return "redirect:/viewallstudents"; // Redirect to student list
        }
    


    // Add Student Page
    @GetMapping("AddStudent")
    public String addStudent(Model model) {
        model.addAttribute("student", new Student());
        return "AddStudent";
    }
    
    @PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		
		String name=request.getParameter("sname");
		String gender=request.getParameter("sgender");
		String dateofbirth=request.getParameter("sdateofbirth");
		String email=request.getParameter("semail");
		String password=request.getParameter("spwd");
		String location=request.getParameter("slocation");
		String contact=request.getParameter("scontact");
		String status=request.getParameter("sstatus");
		
		if (dateofbirth == null || dateofbirth.isEmpty()) {
	        ModelAndView mv = new ModelAndView("studentreg");
	        mv.addObject("error", "Date of birth cannot be empty.");
	        return mv;
	    }
		
		Student student = new Student();
		student.setName(name);
		student.setGender(gender);
		student.setDateofbirth(dateofbirth);
		student.setEmail(email);
		student.setPassword(password);
		student.setLocation(location);
		student.setContact(contact);
		student.setStatus(status);
		
		
		String message = studentService.studentRegistration(student);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		
		return mv;
		
	}

    // Delete Student Page
    @GetMapping("/deletestudent")
    public String viewAllStudentsForDeletion(Model model) {
        List<Student> students = adminService.getAllStudents();
        model.addAttribute("studentlist", students);
        return "deletestudent";
    }

    // Delete Student Action
    @PostMapping("/deletestudent")
    public String deleteStudent(@RequestParam("studentId") Integer id, Model model) {
        adminService.deleteStudentById(id);
        model.addAttribute("message", "Student with ID " + id + " has been deleted successfully!");
        return "redirect:/deletestudent";
    }
    
 // Add new faculty page
    @GetMapping("addfaculty")
    public String addFaculty(Model model) {
        model.addAttribute("faculty", new Faculty());
        return "addfaculty";
    }
    
    @PostMapping("insertfaculty")
    public ModelAndView insertfaculty(HttpServletRequest request) {

        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dateofbirth = request.getParameter("fdateofbirth");
        String email = request.getParameter("femail");
        String password = request.getParameter("fpwd");
        String department = request.getParameter("fdepartment");
        String location = request.getParameter("flocation");
        String contact = request.getParameter("fcontact");

        Faculty faculty = new Faculty();
        faculty.setName(name);
        faculty.setGender(gender);
        faculty.setDateofbirth(dateofbirth);
        faculty.setEmail(email);
        faculty.setPassword(password);
        faculty.setDepartment(department);
        faculty.setLocation(location);
        faculty.setContact(contact);

        // Perform registration and check result
        String message = facultyService.facultyRegistration(faculty);

        /*if ("success".equalsIgnoreCase(message)) {
            // Redirect to viewallfaculty page if registration is successful
            return new ModelAndView("redirect:/viewallfaculty");
        } else {*/
            // Redirect to an error page if registration fails
            ModelAndView mv = new ModelAndView();
            mv.setViewName("facultyregsuccess");
            mv.addObject("message", message);
            return mv;
        }


    
    @GetMapping("/viewallfaculty")
    public ModelAndView viewAllFaculty() {
        List<Faculty> facultyList = adminService.getAllFaculty();
        ModelAndView mv = new ModelAndView("viewallfaculty");
        mv.addObject("facultyList", facultyList);
        return mv;
    }
    @GetMapping("/deletefaculty")
    public String viewAllFacultyForDeletion(Model model) {
        List<Faculty> faculty = adminService.getAllFaculty();
        model.addAttribute("facultylist", faculty);
        return "deletefaculty";
    }

    // Delete Student Action
    @PostMapping("/deletefaculty")
    public String deleteFaculty(@RequestParam("facultyId") Integer id, Model model) {
        adminService.deleteFacultyById(id);
        model.addAttribute("message", "Student with ID " + id + " has been deleted successfully!");
        return "redirect:/deletefaculty";
    }


    @GetMapping("addcourse")
	public ModelAndView addcourse() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("addcourse"); // Ensure this name matches your JSP file
	    return mv;
	}
    
    @PostMapping("/insertcourse")
    public ModelAndView insertcourse(HttpServletRequest request) {
        String Coursename = request.getParameter("Coursename");
        String Coursecode = request.getParameter("Coursecode");
        String ltps = request.getParameter("ltps");
        int credits = Integer.parseInt(request.getParameter("credits"));

        Course course = new Course();
        course.setCoursename(Coursename);
        course.setCoursecode(Coursecode);
        course.setLtps(ltps);
        course.setCredits(credits);

        String message = adminService.registerCourse(course);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("success");
        mv.addObject("message", message);

        return mv;
    }
    
}
