package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private AdminRepository adminRepository;
    
    @Autowired
    private FacultyRepository facultyRepository;

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public long studentcount() {
        return studentRepository.count();
    }

    @Override
    public String AddStudent(Student s) {
        studentRepository.save(s);
        return "Student added successfully.";
    }
    

    @Override
    public void deleteStudentById(Integer id) {
        Optional<Student> student = studentRepository.findById(id);
        if (student.isPresent()) {
            studentRepository.deleteById(id);
            System.out.println("Student with ID " + id + " deleted successfully.");
        } else {
            System.out.println("Student with ID " + id + " not found.");
        }
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

   
    @Override
    public Student getStudentById(int id) {
        Optional<Student> studentOpt = studentRepository.findById(id);
        if (studentOpt.isPresent()) {
            return studentOpt.get(); // Return the student if found
        } else {
            throw new RuntimeException("Student not found with ID: " + id);
        }
    }

    @Override
    public void updatestudent(Student student) {
        Student existingStudent = studentRepository.findById(student.getId())
                .orElseThrow(() -> new RuntimeException("Student not found"));
        existingStudent.setName(student.getName());
        existingStudent.setGender(student.getGender());
        existingStudent.setDateofbirth(student.getDateofbirth());
        existingStudent.setEmail(student.getEmail());
        existingStudent.setPassword(student.getPassword());
        existingStudent.setLocation(student.getLocation());
        existingStudent.setContact(student.getContact());
        studentRepository.save(existingStudent); // Save the updated record
    }

    @Override
    public List<Faculty> getAllFaculty() {
        return facultyRepository.findAll();
    }

	@Override
	public String addfaculty(Faculty faculty) {
		facultyRepository.save(faculty);
        return "Faculty added successfully.";
	}

	@Override
	 public void deleteFacultyById(Integer id) {
        Optional<Faculty> faculty = facultyRepository.findById(id);
        if (faculty.isPresent()) {
            facultyRepository.deleteById(id);
            System.out.println("Student with ID " + id + " deleted successfully.");
        } else {
            System.out.println("Student with ID " + id + " not found.");
        }
    }
	 @Autowired
	    private CourseRepository courseRepository; // Injecting the repository

	    @Override
	    public String registerCourse(Course course) {
	        // Validate mandatory fields
	        if (course.getCoursename() == null || course.getCoursename().isEmpty()) {
	            return "Course Name is required.";
	        }
	        if (course.getCoursecode() == null || course.getCoursecode().isEmpty()) {
	            return "Course Code is required.";
	        }
	        if (course.getLtps() == null || course.getLtps().isEmpty()) {
	            return "LTP Structure is required.";
	        }
	        if (course.getCredits() <= 0) {
	            return "Credits must be a positive value.";
	        }

	        try {
	            // Save the course to the database
	            courseRepository.save(course);
	            return "Course registered successfully!";
	        } catch (Exception e) {
	            // Log the exception and return an error message
	            e.printStackTrace();
	            return "An error occurred while registering the course. Please try again.";
	        }
	    }

	    

}
