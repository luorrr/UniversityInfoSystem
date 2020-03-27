package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentDao.java
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface StudentDao {
	public Integer insertStudent(Student student);
	public Student getStudentByIdAndDate(Student student);
}
