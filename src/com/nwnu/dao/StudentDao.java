package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentDao.java
 * 
 * ·学生数据访问层，连接StudentDao.xml
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface StudentDao {
	
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
