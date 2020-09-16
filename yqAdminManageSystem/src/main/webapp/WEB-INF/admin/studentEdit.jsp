<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false" pageEncoding="utf-8"%>
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
					$("ul li:eq(2)").addClass("active");
				});
			</script>
			<div class="data_list">
				<div class="data_list_title">
					添加/修改学生信息
				</div>
				<form action="change/student/info/page.html" method="post">
					<input type="hidden" name="id" value="${studentInfo.id}">
					<div class="data_form">
						<table align="center">
							<tr>
								<td><font color="red">*</font>学生学号：</td>
								<td><input type="text" id="sno"  name="sno" value="${studentInfo.sno}" placeholder="请输入学号"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>学生姓名：</td>
								<td><input type="text" id="name"  name="name" value="${studentInfo.name}"  placeholder="请输入姓名"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>性别：</td>
								<td>
									<select id="sex" name="sex" style="width: 90px;">
										<option value="">请选择...</option>
										<option value="男">男</option>
										<option value="女">女</option>
									</select>
								</td>
							</tr>
							<tr>
								<td><font color="red">*</font>籍贯：</td>
								<td><input type="text" id="hometown"  name="hometown" value="${studentInfo.hometown}" placeholder="请输入籍贯"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>入学日期：</td>
								<td><input type="date" id="date" name="enroldate" lay-verify="date"  placeholder="yyyy-MM-dd" value="${studentInfo.enroldate}" placeholder="请输入入学日期"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>所属院系：</td>
								<td>
									<select id="department" name="department" style="width: 200px;">
										<option  value="计算机科学与技术学院">计算机科学与技术学院</option>
										<option value="电子信息工程学院">电子信息工程学院</option>
										<option value="新闻传播学院">新闻传播学院</option>
										<option value="公艺术设计学院">艺术设计学院</option>
										<option value="外国语学院">外国语学院</option>
									</select>
								</td>
							</tr>
							<tr>
								<td><font color="red">*</font>电子邮箱：</td>
								<td><input type="text" id="email"  name="email" value="${studentInfo.email}" placeholder="请输入电子邮箱"  style="margin-top:5px;height:30px;" /></td>
							</tr>
							<tr>
								<td><font color="red">*</font>联系电话：</td>
								<td><input type="text" id="tel"  name="tel" value="${studentInfo.tel}" placeholder="请输入联系电话"  style="margin-top:5px;height:30px;" /></td>
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

<script type="text/javascript">
	window.onload = $(function () {
		$("#department option").each(function (){

			var departmentName = $(this).val();

			var data = "${studentInfo.department}";

			console.log(departmentName+data+ + "this a value");

			if(departmentName == data){
				this.setAttribute("selected","selected");
			}
		})

		$("#sex option").each(function (){

			var sex = $(this).val();

			var data = "${studentInfo.sex}";

			if(sex == data){
				this.setAttribute("selected","selected");
			}
		})


	})
</script>
</body>
</html>