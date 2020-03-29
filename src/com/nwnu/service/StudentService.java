package com.nwnu.service;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentService.java
 * 
 * ·学生业务层接口
 * 
 * @author Luor
 * @version 1.0
 */

public interface StudentService {
	
	/**
	 * ·该方法负责学生信息插入
	 * 
	 * @param student
	 * @return 学生类实体
	 */
	public Integer insertStudent(Student student);
	
	/**
	 * ·该方法负责根据学号与日期查询学生信息
	 * 
	 * @param student
	 * @return 学生类实体
	 */
	public Student getStudentByIdAndDate(Student student);
}
