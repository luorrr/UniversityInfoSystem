package com.nwnu.service;

import com.nwnu.pojo.Teacher;

/**
 * Filename: TeacherService.java
 * 
 * ����ʦҵ���ӿ�
 * 
 * @author Luor
 * @version 1.0
 */

public interface TeacherService {
	
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
