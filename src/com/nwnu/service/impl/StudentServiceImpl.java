package com.nwnu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwnu.dao.StudentDao;
import com.nwnu.pojo.Student;
import com.nwnu.service.StudentService;

/**
 * Filename: StudentServiceImpl.java
 * 
 * ·学生业务层实现
 * 
 * @author Luor
 * @version 1.0
 */

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDao studentDao;
	
	/**
	 * ·该方法负责学生信息插入
	 * 
	 * @param student
	 * @return 学生类实体
	 */
	@Override
	public Integer insertStudent(Student student) {
		return this.studentDao.insertStudent(student);
	}
	
	/**
	 * ·该方法负责根据学号与日期查询学生信息
	 * 
	 * @param student
	 * @return 学生类实体
	 */
	@Override
	public Student getStudentByIdAndDate(Student student) {
		return this.studentDao.getStudentByIdAndDate(student);
	}
}
