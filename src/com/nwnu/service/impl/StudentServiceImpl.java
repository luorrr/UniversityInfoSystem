package com.nwnu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwnu.dao.StudentDao;
import com.nwnu.pojo.Student;
import com.nwnu.service.StudentService;

/**
 * Filename: StudentServiceImpl.java
 * 
 * ��ѧ��ҵ���ʵ��
 * 
 * @author Luor
 * @version 1.0
 */

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDao studentDao;
	
	/**
	 * ���÷�������ѧ����Ϣ����
	 * 
	 * @param student
	 * @return ѧ����ʵ��
	 */
	@Override
	public Integer insertStudent(Student student) {
		return this.studentDao.insertStudent(student);
	}
	
	/**
	 * ���÷����������ѧ�������ڲ�ѯѧ����Ϣ
	 * 
	 * @param student
	 * @return ѧ����ʵ��
	 */
	@Override
	public Student getStudentByIdAndDate(Student student) {
		return this.studentDao.getStudentByIdAndDate(student);
	}
}
