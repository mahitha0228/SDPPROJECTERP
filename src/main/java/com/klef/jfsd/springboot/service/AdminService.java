package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService {
	
	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname, String pwd);
    public long studentcount();
    public String AddStudent(Student S);
    void deleteStudentById(Integer id);
    public List<Student> getAllStudents();
	public Student getStudentById(int id);
	public void updatestudent(Student student);
	public List<Faculty> getAllFaculty();
	
	public String addfaculty(Faculty faculty);
	public void deleteFacultyById(Integer id);
	public String registerCourse(Course course);
	

}
