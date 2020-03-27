package com.nwnu.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nwnu.pojo.Student;
import com.nwnu.service.StudentService;

/**
 * Filename: StudentController.java
 * 
 * @author Luor
 * @version 1.0
 */

@Controller
@RequestMapping("/nwnu")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/studentInput")
	@ResponseBody
	public String insertStudent(Student student, HttpSession session) {
		Integer rows;
		String flag = "Fail";
		student.setRecordDate(new java.sql.Date(new Date().getTime()));
		//System.out.println(student.getId()+"\n"+student.getRecordDate());
		//System.out.println(this.studentService.getStudentByIdAndDate(student));
		if(this.studentService.getStudentByIdAndDate(student) == null) {
			rows = this.studentService.insertStudent(student);
			flag = "InOK";
		}else {
			return "ExistFail";
		}
		if(rows > 0) {
			return flag;
		}else {
			return "Fail";
		}
	}
	
}
