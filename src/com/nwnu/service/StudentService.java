package com.nwnu.service;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentService.java
 * 
 * @author Luor
 * @version 1.0
 */

public interface StudentService {
	public Integer insertStudent(Student student);
	public Student getStudentByIdAndDate(Student student);
}
