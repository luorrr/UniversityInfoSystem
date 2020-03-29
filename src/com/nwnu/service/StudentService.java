package com.nwnu.service;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentService.java
 * 
 * ��ѧ��ҵ���ӿ�
 * 
 * @author Luor
 * @version 1.0
 */

public interface StudentService {
	
	/**
	 * ���÷�������ѧ����Ϣ����
	 * 
	 * @param student
	 * @return ѧ����ʵ��
	 */
	public Integer insertStudent(Student student);
	
	/**
	 * ���÷����������ѧ�������ڲ�ѯѧ����Ϣ
	 * 
	 * @param student
	 * @return ѧ����ʵ��
	 */
	public Student getStudentByIdAndDate(Student student);
}
