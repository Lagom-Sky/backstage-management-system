<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="author" content="粤嵌科技" />
	<base href="http://114.215.199.49:8080/yqAdminManageSystem_war_exploded/">
	<title>学生信息管理系统-系统管理员界面</title>
	<link type="text/css" rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="static/css/style.css" />
	<script type="text/javascript" src="static/js/jQuery.js"></script>
</head>
<body>
<div class="container-fluid" style="padding-right: 0px;padding-left: 0px;">
	<div region="north" style="height: 100px;background-image: url('static/images/bg.jpg')">
		<div align="left" style="width: 80%;height:70px ;float: left;padding-top: 40px;padding-left: 30px;" ><font color="white" size="6">学生信息管理系统</font><font color="white" size="4">(系统管理员)</font></div>
		<div style="padding-top: 70px;padding-right: 20px;color:#fff;font-size:14px"><i class="icon-user icon-white"></i>&nbsp;当前用户：&nbsp;<font color="red">${admin.name}</font></div>
	</div>
</div>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span2 bs-docs-sidebar">
			<ul class="nav nav-list bs-docs-sidenav">
				<li><a href="mainAdmin.html"><i class="icon-chevron-right"></i><i class="icon-home"></i>首页</a></li>
				<li><a href="to/manage/admin/page.html"><i class="icon-chevron-right"></i>管理员管理</a></li>
				<li><a href="to/manage/student/page.html"><i class="icon-chevron-right"></i>学生管理</a></li>
				<li><a href="to/check/selfInfo/page.html"><i class="icon-chevron-right"></i>个人信息</a></li>
				<li><a href="login.html"><i class="icon-chevron-right"></i>退出系统</a></li>
			</ul>
		</div>
		<div class="span10">
			<script type="text/javascript">
				$(document).ready(function(){
					$("ul li:eq(1)").addClass("active");
				});
			</script>
			<div class="data_list">
				<div class="data_list_title">
					添加/修改管理员信息
				</div>
				<form action="change/admin/info/page.html" method="post">
					<input type="hidden" name="id" value="${adminInfo.id}">
					<div class="data_form">
						<table align="center">
							<tr>
								<td><font color="red">*</font>管理员名称：</td>
								<td><input type="text" id="username"  name="username" value="${adminInfo.username}" placeholder="${adminInfo.username}"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>管理员密码：</td>
								<td><input type="text" id="password"  name="password" value="${adminInfo.password}" placeholder="${adminInfo.password}"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>管理员姓名：</td>
								<td><input type="text" id="name"  name="name" value="${adminInfo.name}" placeholder="${adminInfo.name}"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>电子邮箱：</td>
								<td><input type="text" id="email"  name="email" value="${adminInfo.email}" placeholder="${adminInfo.email}"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>角色类型：</td>
								<td>
									<select id="role" name="role">

										<option value="超级管理员">超级管理员</option>
										<option value="普通管理员">普通管理员</option>
									</select>
								</td>
							</tr>
						</table>
						<div align="center">
							<input type="submit" class="btn btn-primary" value="保存"/>
							&nbsp;<button class="btn btn-primary" type="button" onclick="">返回</button>
						</div>
						<div align="center">
							<font id="error" color="red">提示信息</font>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	Copyright © 2016 - 2020  粤嵌科技 ,  All Rights Reserved
</div>

<script>
	window.onload = $(function () {
		$("#role option").each(function (){

			var role = $(this).val();

			var data = "${adminInfo.role}";

			if(role == data){
				this.setAttribute("selected","selected");
			}
		})
		})
</script>
</body>
</html>