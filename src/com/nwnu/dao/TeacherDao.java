package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherDao.java
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface TeacherDao {
	public Integer insertTeacher(Teacher teacher);
	public Teacher getTeacherByIdAndDate(Teacher teacher);
}
