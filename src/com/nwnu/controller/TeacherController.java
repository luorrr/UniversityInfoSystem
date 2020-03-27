package com.nwnu.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nwnu.pojo.Teacher;
import com.nwnu.service.TeacherService;

/**
 * Filename: TeacherController.java
 * 
 * @author Luor
 * @version 1.0
 */

@Controller
@RequestMapping("/nwnu")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("/teacherInput")
	@ResponseBody
	public String insertTeacher(Teacher teacher, HttpSession session) {
		Integer rows;
		String flag = "Fail";
		teacher.setRecordDate(new java.sql.Date(new Date().getTime()));
		//System.out.println(teacher.getId()+"\n"+teacher.getRecordDate());
		//System.out.println(this.teacherService.getTeacherByIdAndDate(teacher));
		if(this.teacherService.getTeacherByIdAndDate(teacher) == null) {
			rows = this.teacherService.insertTeacher(teacher);
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
