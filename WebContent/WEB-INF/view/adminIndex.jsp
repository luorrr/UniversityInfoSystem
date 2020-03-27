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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link rel="shortcut icon" href="<%=basePath%>plug-in/system/images/favicon.ico">
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>plug-in/jquery-3.4.1/jquery-3.4.1.js"></script>
<script src="<%=basePath%>plug-in/bootstrap-3.3.7/js/bootstrap.js"></script>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

/* 头部样式 */
.header {
	background-color: #337ab7;
	padding: 10px;
	height: 50px;
	color: #ffffff;
}
/* 响应式布局 - 小于 600 px 时改为上下布局 */
@media screen and (max-width: 600px) {
	.column {
		width: 100%;
	}
}
</style>

</head>
<!-- 弹出页面 -->
<script>
	$(function() {
		$(".navbar-nav a").on("click", function() {
			var address = $(this).attr("data-src");
			$("iframe").attr("src", address);
		});
		$(".navbar-header a").on("click", function() {
			var address = $(this).attr("data-src");
			$("iframe").attr("src", address);
		});
		$(".navbar-rightr a").on("click", function() {
			var address = $(this).attr("data-src");
			$("iframe").attr("src", address);
		});
	});
</script>
<script type="text/javascript">
	function SetWinHeight(obj) {
		obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';

	}
</script>
<body>
	<div class="navbar navbar-default" style="margin-bottom: 0">
		<div class="footer text-center"
			style="background-color: #337ab7; height: 90px;">
			<div class="container" >
				<div class="navbar-header" style="margin-top: 20px;">
					<a class="navbar-brand" href="#"
						style="font-size: 25px; color: #ffffff" data-src="<%=managePath %>adminInfo">后台管理</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav" style="margin-top: 20px;">
						<li style="width: 150px; text-align: center; font-size: 20px">
							<a href="#" data-src="<%=managePath %>studentManage" style="color: #ffffff">学生管理</a>
						</li>
						<li style="width: 150px; text-align: center; font-size: 20px">
							<a href="#" data-src="<%=managePath %>teacherManage" style="color: #ffffff">老师管理</a>
						</li>
						<li style="width: 150px; text-align: center; font-size: 20px">
							<a href="#" data-src="<%=managePath %>systemManage" style="color: #ffffff">系统管理</a>
						</li>
						<li style="width: 150px; text-align: center; font-size: 20px">
							<a href="#" data-src="<%=managePath %>adminInfo" style="color: #ffffff">交流互动</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right" style="margin-top: 20px;margin-right: -30px;">
						<li><a href="#" data-src="adminMsg.jsp"
							style="color: #ffffff"><span class="glyphicon glyphicon-user"
								style="color: #ffffff"></span>&nbsp;${manager.name}</a></li>
						<li><a href="<%=managePath %>logout" style="color: #ffffff"><span
								class="glyphicon glyphicon-log-in" style="color: #ffffff"></span>
								退出登录</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="center">
		<iframe frameborder="0" scrolling="no"
			style="width: 100%; height: 100%; margin-top: 15px; margin-left: auto; margin-right: auto;"
			onload="Javascript:SetWinHeight(this)" src="<%=managePath %>adminInfo" ></iframe>
	</div>
</body>
</html>