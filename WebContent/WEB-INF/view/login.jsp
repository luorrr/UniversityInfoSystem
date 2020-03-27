<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String examIndexPath = basePath + "exam/";
	String studentPath = path + "/exam/student/";
	String teacherPath = path+"/exam/teacher/";
	String systemPath = path + "/exam/";
	session.setAttribute("indexPath", basePath);
	session.setAttribute("examIndexPath", examIndexPath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<link rel="shortcut icon" href="<%=basePath%>plug-in/system/images/favicon.ico">
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>plug-in/jquery-3.4.1/jquery-3.4.1.js"></script>
<script type="text/javascript" src="<%=basePath%>plug-in/bootstrap-3.3.7/js/bootstrap.js"></script>

<script type="text/javascript">
	function startload(){
		var thiswidth = document.documentElement.clientWidth;
		var thisheignt = document.documentElement.clientHeight;
		var loginform = document.getElementById("loginform");
		var passworddiv = document.getElementById("passworddiv");
		var codetext = document.getElementById("codetext");
		var passwordtext = document.getElementById("passwordtext");
		var radioset = document.getElementById("radioset");
		
		var formwidth = 0.205*thiswidth;
		var formheight = 0.18*thisheignt;
		var textheight = 0.0745*thisheignt;
		
		loginform.style.position="absolute";
		passworddiv.style.position="absolute";
		passwordtext.style.position="absolute";
		radioset.style.position="absolute";
		
		loginform.style.width = formwidth+"px";
		loginform.style.height = formheight+"px";
		
		loginform.style.left = 0.4345*thiswidth+"px";
		loginform.style.top = 0.4747*thisheignt+"px";
		
		radioset.style.marginLeft = 0.01*thiswidth+"px";
		radioset.style.marginTop = 0.132*thisheignt+"px";
		
		passwordtext.style.marginTop = 0.179*formheight+"px";
		
		codetext.style.height = textheight+"px";
		codetext.style.width = formwidth+"px";
		
		passwordtext.style.height = textheight+"px";
		passwordtext.style.width = formwidth+"px";
		
		if("${student}" == null && "${teacher}" == null){
			alert("您还未登录，请登录！");
		}else if("${msg}" != null && "${msg}" != ""){
			alert("${msg}");
		}
	}
	/*回车事件*/
	function EnterPress(e){ //传入 event 
		var e = e || window.event;
		if(e.keyCode == 13){
			if(($('input:radio:checked').val()) == "0"){
				$("#loginform").attr("action", "<%=studentPath %>login").submit();
			}else if(($('input:radio:checked').val()) == "1"){
				$("#loginform").attr("action", "<%=teacherPath %>login").submit();
			}
		}
	}
</script>

<style type="text/css">
	body {
		font-size: 16px;
		color: black;
	}
	.log_background{
		background: url("<%=basePath%>plug-in/system/images/log.jpg") no-repeat center center fixed;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	.logindiv{
		position="absolute";
	}
	input{
		background-color: transparent;
		outline: none;
		border: 0px;
	}
	
</style>
</head>

<body class="log_background" onload="startload()" onkeydown="EnterPress()">
	<div id="logindiv" class="logindiv">
		<form id="loginform" class="loginform" action="" method="post">
			<div id="codediv" class="codediv">
				<input id="codetext" class="codetext" type="text" name="code" value="201901001" >
			</div>
			<div id="passworddiv" class="passworddiv">
				<input id="passwordtext" class="passwordtext" type="password" name="password" value="123456" >
			</div>
			<div id="radioset" class="radioset">
				<input type="radio" id="radio1" class="radio1" name="radio" value="0" checked="checked"><label for="radio1">学生</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" id="radio2" class="radio2" name="radio" value="1"><label for="radio2">老师</label>
			</div>
		</form>
	</div>
	
</body>
</html>