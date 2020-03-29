package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherDao.java
 * 
 * ·教师数据访问层，连接TeacherDao.xml
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface TeacherDao {
	
	/**
	 * ·该方法负责教师信息插入
	 * 
	 * @param teacher
	 * @return 教师类实体
	 */
	public Integer insertTeacher(Teacher teacher);
	
	/**
	 * ·该方法负责根据工号与日期查询教师信息
	 * 
	 * @param teacher
	 * @return 教师类实体
	 */
	public Teacher getTeacherByIdAndDate(Teacher teacher);
}
