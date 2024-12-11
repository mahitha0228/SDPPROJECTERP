package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Faculty;

public interface FacultyService {

	public Faculty checkFacultyLogin(String email, String password);

	public void save(Faculty faculty);

	public String facultyRegistration(Faculty faculty);

}
