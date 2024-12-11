package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Column;

@Entity
public class Course {

    @Id  // This marks 'coursecode' as the primary key
    @Column(name = "coursecode", unique = true, nullable = false)  // Unique course code
    private String coursecode;  // Unique course code

    @Column(name = "coursename", nullable = false)  // Course name
    private String coursename;

    @Column(name = "ltps", nullable = false)  // LTP structure
    private String ltps;

    @Column(name = "credits", nullable = false)  // Total course credits
    private int credits;

    // Default constructor
    public Course() {}

    // Getters and Setters
    public String getCoursecode() {
        return coursecode;
    }

    public void setCoursecode(String coursecode) {
        this.coursecode = coursecode;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getLtps() {
        return ltps;
    }

    public void setLtps(String ltps) {
        this.ltps = ltps;
    }

    public int getCredits() {
        return credits;
    }

    public void setCredits(int credits) {
        this.credits = credits;
    }
}
