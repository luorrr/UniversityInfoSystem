package com.nwnu.dao;

import org.springframework.stereotype.Repository;

import com.nwnu.pojo.Student;

/**
 * Filename: StudentDao.java
 * 
 * ��ѧ�����ݷ��ʲ㣬����StudentDao.xml
 * 
 * @author Luor
 * @version 1.0
 */

@Repository
public interface StudentDao {
	
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
