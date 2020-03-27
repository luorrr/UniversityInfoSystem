package com.nwnu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwnu.dao.TeacherDao;
import com.nwnu.pojo.Teacher;
import com.nwnu.service.TeacherService;

/**
 * Filename: TeacherServiceImpl.java
 * 
 * @author Luor
 * @version 1.0
 */

@Service
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Override
	public Integer insertTeacher (Teacher teacher) {
		return this.teacherDao.insertTeacher(teacher);
	}
}
