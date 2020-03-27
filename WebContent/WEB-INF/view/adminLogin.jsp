<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String examIndexPath = basePath+"exam/";
	String studentPath = path+"/exam/student/";
	String teacherPath = path+"/exam/teacher/";
	String managePath = path+"/manage/";
	String systemPath = path+"/exam/";
	session.setAttribute("indexPath", basePath);
	session.setAttribute("examIndexPath", examIndexPath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>网站后台管理系统登陆</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="<%=basePath%>plug-in/system/images/favicon.ico">
<link href="<%=basePath%>plug-in/system/css/adminstyle.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>plug-in/jquery-3.4.1/jquery-3.4.1.js"></script>
<script src="<%=basePath%>plug-in/bootstrap-3.3.7/js/bootstrap.js"></script>

<script type="text/javascript">
	
	function toload() {
		if("${manager}" == null){
			alert("您还未登录，请登录！");
		}else if("${msg}" != null && "${msg}" != ""){
			alert("${msg}");
		}
	}
	/*回车事件*/
	function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){
			$("#loginform").attr("action", "<%=managePath %>login").submit();
		} 
	} 
</script>
</head>

<body onload="toload()" onkeypress="EnterPress()">
	<div class="main">
		<div class="login-form">
			<h1>Manager Login</h1>
			<div class="head">
				<img src="<%=basePath %>plug-in/system/images/logo.png" alt="" />
			</div>
			<form id="loginform" action="<%=managePath %>login">
				<input type="text" class="text" name="code" value="admin"
					onblur="if (this.value == '') {this.value = 'USERNAME';}">
				<input type="password" name="password" value="123456"
					onblur="if (this.value == '') {this.value = 'Password';}">
				<div class="submit">
					<input type="submit" value="LOGIN">
				</div>
				<p>
					<a href="#">Forgot Password ?</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>