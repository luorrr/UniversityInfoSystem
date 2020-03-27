package com.nwnu.service;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherService.java
 * 
 * @author Luor
 * @version 1.0
 */

public interface TeacherService {
	public Integer insertTeacher(Teacher teacher);
	public Teacher getTeacherByIdAndDate(Teacher teacher);
}
