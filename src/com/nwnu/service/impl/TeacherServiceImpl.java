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
	
	/**
	 * ·该方法负责教师信息插入
	 * 
	 * @param teacher
	 * @return 教师类实体
	 */
	@Override
	public Integer insertTeacher (Teacher teacher) {
		return this.teacherDao.insertTeacher(teacher);
	}
	
	/**
	 * ·该方法负责根据工号与日期查询教师信息
	 * 
	 * @param teacher
	 * @return 教师类实体
	 */
	@Override
	public Teacher getTeacherByIdAndDate(Teacher teacher) {
		return this.teacherDao.getTeacherByIdAndDate(teacher);
	}
}
