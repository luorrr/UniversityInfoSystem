<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String nwnuIndexPath = basePath + "nwnu/";
	String studentPath = path + "/nwnu/student/";
	String teacherPath = path + "/nwnu/teacher/";
	session.setAttribute("indexPath", basePath);
	session.setAttribute("nwnuIndexPath", nwnuIndexPath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息录入</title>
<link rel="shortcut icon" href="<%=basePath%>plug-in/others/img/favicon.ico">
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>plug-in/bootstrap-3.3.7/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>plug-in/jquery-3.4.1/jquery-3.4.1.js"></script>
<script src="<%=basePath%>plug-in/bootstrap-3.3.7/js/bootstrap.js"></script>
<style type="text/css">

#selectUser {
	position: absolute;
	width: 140px;
	height: 140px;
	left: 50%;
	top: 40%;
}
.btn {
	width: 120px;
	height: 50px;
	margin: 10px 10px 10px 10px;
}

.table {
    margin-bottom: 0px;
    cellspacing: 3px;
    cellpadding: 3px;
}
.modal-body {
    position: relative;
    padding: 15px 60px 10px 60px;
}
.labelName {
    text-align: center;
    font-size: 18px;
    width: 150px;
    
}
.labelValue {
    text-align: center;
    width: 240px;
}
.labelValue input {
    width: 210px;
    border-radius: 10px;
    border-width: 1px;
    border-style: solid;
    outline: transparent;
    padding: 2px 10px 2px 10px;
}
.labelValue label {
    width: 60px;
    font-size: 15px;
}
.labelValue label input {
    width: 25px;
}
#Button1 {
    margin: 10px;
}

</style>
</head>
<!-- 轮播图 -->
<script>
    var i=0;
    var c = null;
    c = setTimeout(carousel,2000);//开始执行
    function carousel() {
     clearTimeout(c);//清除定时器
        $("#pic"+i).removeClass("active");
        $("#pic"+(i+1)).addClass("active");
        i++;
        $("ol li").removeClass("active");
        $("ol li:eq("+i+")").addClass("active");
        if(i>2){
            $("#pic"+(i-1)).removeClass("active");
            $("#pic0").addClass("active");
            i=0;
            $("ol li:eq("+i+")").addClass("active");
        }
        c = setTimeout(carousel,2000); //设定定时器，循环执行             
    } 
</script>
<script type="text/javascript">
    function submitStudent() {
        $.post("<%=nwnuIndexPath %>studentInput", $("#submitStudentForm").serialize(),
        	    function(data){
        	if(data == "InOK") {
                alert("信息提交成功！");
                window.location.reload();
            } else if (data == "ExistFail") {
                alert("您今天已经提交过信息啦！");
                window.location.reload();
            } else {
                alert("操作失败！");
            }
        });
    };
    function submitTeacher() {
        $.post("<%=nwnuIndexPath %>teacherInput", $("#submitStudentForm").serialize(),
                function(data){
            if(data == "InOK") {
                alert("信息提交成功！");
                window.location.reload();
            } else if (data == "ExistFail") {
            	alert("您今天已经提交过信息啦！");
            	window.location.reload();
            } else {
                alert("操作失败！");
            }
        });
    };
</script>

<body background="<%=basePath%>plug-in/others/img/bg1.png">
    
    <div class="navbar navbar-default">
        <div class="footer text-center"
            style="background-color: #337ab7; height: 80px;">
            <div class="container" style="padding-top: 20px;">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"
                        style="font-size: 25px; color: #ffffff">西北师范大学疫情防控信息填报系统</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" style="float: right;">
                        <li><a href="" style="color: #ffffff">首页</a></li>
                        <li><a href="https://www.nwnu.edu.cn/" style="color: #ffffff">学校官网</a></li>
						<li><a type="submit" href="" data-toggle="modal"
							data-target="#sregist" style="color: #ffffff">学生信息录入</a></li>
						<li><a type="submit" href="" data-toggle="modal"
							data-target="#tregist" style="color: #ffffff">教师信息录入</a></li>
					</ul>
                </div>
                
            </div>
        </div>
    </div>

	<div class="container">
		<div id="myCarousel" class="carousel slide"
			style="width: 100%; height: 400px">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div id="pic0" class="item active">
					<img src="<%=basePath%>plug-in/others/img/nwnu1.png"
						alt="First slide" style="height: 400px; width: 100%">
				</div>
				<div id="pic1" class="item">
					<img src="<%=basePath%>plug-in/others/img/nwnu2.png"
						alt="Second slide" style="height: 400px; width: 100%">
				</div>
				<div id="pic2" class="item">
					<img src="<%=basePath%>plug-in/others/img/nwnu3.jpg"
						alt="Third slide" style="height: 400px; width: 100%">
				</div>
			</div>
		</div>
	</div>

	<!-- <blockquote>
		<div id="selectUser">
			<button type="submit" class="btn btn-default" data-toggle="modal"
				data-target="#sregist" style="margin-top: 8px">学生信息录入</button>
			<button type="submit" class="btn btn-default" data-toggle="modal"
                data-target="#tregist" style="margin-top: 8px">教师信息录入</button>
		</div>
	</blockquote> -->
	
	
	<%-- path=
	<%=path%>
	<br /> basePath=
	<%=basePath%>
	<br /> nwnuIndexPath=
	<%=nwnuIndexPath%>
	<br /> studentPath=
	<%=studentPath%>
	<br /> teacherPath=
	<%=teacherPath%>
	<br /> systemPath=
	<%=systemPath%>
	<br /> --%>

    <div class="navbar navbar-default " style="padding-top: 0px;margin-top: 30px;margin-bottom: 0px;">
        <div class="footer text-center"
            style="background-color: #337ab7; height: 120px">
            <div class="container" style="padding-top: 25px; color: #ffffff">
                <p style="margin-top: 15px;">-西北师范大学防疫部-<br/>-2020.03-</p>
            </div>
        </div>
    </div>

    <!-- 学生模态框（Modal） -->
    <div class="modal fade" id="sregist" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel" align="center">学生信息录入</h4>
                </div>
                <div class="modal-body">
                    <form id="submitStudentForm">
                        <table style="line-height: 25px" class="table">
                            <tr>
                                <td class="labelName" style="border-top-width: 0px">姓名：</td>
                                <td class="labelValue" style="border-top-width: 0px">
                                    <input type="text" name="name" id="name" />
                                </td>
                            </tr>
                            <tr>
                                <td class="labelName" >性别：</td>
                                <td class="labelValue" >
                                    <label><input type="radio" name="sex" id="sex" value="男" />男</label>
                                    <label><input type="radio" name="sex" id="sex" value="女" checked/>女</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="labelName" >学号：</td>
                                <td class="labelValue" ><input type="text" name="id" id="id" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >学院：</td>
                                <td class="labelValue" ><input type="text" name="college" id="college" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >专业：</td>
                                <td class="labelValue" ><input type="text" name="major" id="major" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >联系电话：</td>
                                <td class="labelValue" ><input type="text" name="phoneNumber" id="phoneNumber" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >所在省：</td>
                                <td class="labelValue" ><input type="text" name="province" id="province" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >所在市：</td>
                                <td class="labelValue" ><input type="text" name="city" id="city" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >是否感染：</td>
                                <td class="labelValue" >
                                    <label><input type="radio" name="diagnosed" id="diagnosed" value="1" />是</label>
                                    <label><input type="radio" name="diagnosed" id="diagnosed" value="0" checked/>否</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="labelName" >体温：</td>
                                <td class="labelValue" ><input type="text" name="temperature" id="temperature" /></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="Button1"
                        onClick="submitStudent();">提交</button>
                </div>
            </div>
        </div>
    </div>
    
	<!-- 教师模态框（Modal） -->
	<div class="modal fade" id="tregist" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">教师信息录入</h4>
				</div>
				<div class="modal-body">
					<form id="submitTeacherForm">
						<table style="line-height: 25px" class="table">
                            <tr>
                                <td class="labelName" style="border-top-width: 0px">姓名：</td>
                                <td class="labelValue" style="border-top-width: 0px"><input type="text" name="name" id="name" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >性别：</td>
                                <td class="labelValue" >
                                    <label><input type="radio" name="sex" id="sex" value="男" />男</label>
                                    <label><input type="radio" name="sex" id="sex" value="女" checked/>女</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="labelName" >工号：</td>
                                <td class="labelValue" ><input type="text" name="id" id="id" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >学院：</td>
                                <td class="labelValue" ><input type="text" name="college" id="college" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >联系电话：</td>
                                <td class="labelValue" ><input type="text" name="phoneNumber" id="phoneNumber" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >所在省：</td>
                                <td class="labelValue" ><input type="text" name="province" id="province" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >所在市：</td>
                                <td class="labelValue" ><input type="text" name="city" id="city" /></td>
                            </tr>
                            <tr>
                                <td class="labelName" >是否感染：</td>
                                <td class="labelValue" >
                                    <label><input type="radio" name="diagnosed" id="diagnosed" value="1" />是</label>
                                    <label><input type="radio" name="diagnosed" id="diagnosed" value="0" checked/>否</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="labelName" >体温：</td>
                                <td class="labelValue" ><input type="text" name="temperature" id="temperature" /></td>
                            </tr>
                        </table>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="Button1"
						onClick="submitTeacher();">提交</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>