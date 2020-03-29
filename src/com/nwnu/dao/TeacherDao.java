package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherDao.java
 * 
 * ����ʦ���ݷ��ʲ㣬����TeacherDao.xml
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface TeacherDao {
	
	/**
	 * ���÷��������ʦ��Ϣ����
	 * 
	 * @param teacher
	 * @return ��ʦ��ʵ��
	 */
	public Integer insertTeacher(Teacher teacher);
	
	/**
	 * ���÷���������ݹ��������ڲ�ѯ��ʦ��Ϣ
	 * 
	 * @param teacher
	 * @return ��ʦ��ʵ��
	 */
	public Teacher getTeacherByIdAndDate(Teacher teacher);
}
