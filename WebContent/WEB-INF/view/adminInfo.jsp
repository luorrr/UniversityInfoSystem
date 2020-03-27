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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理信息</title>
<link rel="shortcut icon" href="<%=basePath%>plug-in/system/images/favicon.ico">
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>plug-in/jquery-3.4.1/jquery-3.4.1.js"></script>
<script src="<%=basePath%>plug-in/bootstrap-3.3.7/js/bootstrap.js"></script>
<style type="text/css">
body {
	padding-bottom: 70px;
}

.starter-template {
	padding: 40px 15px;
	text-align: center;
}

.address {
	background: #efb73e;
	color: #fff;
	padding: 10px 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-md-4" style="margin-top: 20px">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">欢迎使用网络考试系统</h3>
				</div>
				<div class="panel-body" style="height: 300px;">
					</br>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网络考试系统为数以万计的用户提供了良好的网络考试解决方案。它基于JAVA与MYSQL开发，可以稳定、顺畅的运行在Windows平台上。您可以通过它在公网或局域网快捷方便的创建题库，发布试卷，组织考试，并由系统自动批改。高度的可配置性和灵活性使得它可以被应用于很多领域。</P>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该系统支持各种常见题型，提供普通试卷、随机试卷两种试卷形式，并且支持试题随机混排，单题与整卷展示模式，有效防止作弊。
					<p>
				</div>
			</div>
		</div>
		<div class="col-md-4" style="margin-top: 20px;">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">功能与特性介绍</h3>
				</div>
				<div class="panel-body" style="height: 300px;">

					<h3>安全、稳定、高效</h3>
					<p>基于高效的缓存机制，安全、严谨的程序算法开发，支持横向扩展，提升处理能力。</p>
					<h3>操作方便、灵活</h3>
					<p>优化操作流程，鼠标拖拽，数据克隆等技术使得操作简便快捷。</p>

				</div>
			</div>
		</div>
		<div class="col-md-4" style="margin-top: 20px">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">最新动态</h3>
				</div>
				<div class="panel-body" style="height: 300px;">
					<blockquote class="tm_blockquote">
						<strong>2019-02-01 </strong><br /> <b style="font-weight: bold">3.1标准版</b>：管理员组卷功能优化、考生答卷界面优化、在线学习、移动端试卷优化，考生账号与题库导出，部分常见问题提示等。
					</blockquote>
				</div>
			</div>
		</div>

	</div>

</body>
</html>