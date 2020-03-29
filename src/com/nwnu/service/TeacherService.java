package com.nwnu.service;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherService.java
 * 
 * ·教师业务层接口
 * 
 * @author Luor
 * @version 1.0
 */

public interface TeacherService {
	
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
