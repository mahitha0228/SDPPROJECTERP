package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.repository.FacultyRepository;


@Service
public class FacultyServiceImpl implements FacultyService{

	@Autowired
	private FacultyRepository facultyRepository;

	@Override
	public Faculty checkFacultyLogin(String email, String password) {
		 return facultyRepository.findByEmailAndPassword(email, password);
	}

	@Override
	public void save(Faculty faculty) {
	    // Save the faculty object to the database using the FacultyRepository
	    facultyRepository.save(faculty);
	}
	
	@Override
	public String facultyRegistration(Faculty faculty) {
	    try {
	        facultyRepository.save(faculty); // Save the faculty record to the database
	        return "Success";
	    } catch (Exception e) {
	        return "Error: " + e.getMessage(); // Return an error message if saving fails
	    }
	}
}
