<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="author" content="粤嵌科技" />
	<base href="http://114.215.199.49:8080/yqAdminManageSystem_war_exploded/">
	<title>学生信息管理系统-系统管理员界面</title>
	<link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="static/css/style.css" />
	<script type="text/javascript" src="static/js/jQuery.js"></script>
	<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(function () {

			var adminId ;

			$(".delete").click(function (){

				$("#adminDeleteModal").modal("show");

				adminId = this.value;
			});

			$("#adminDelCancelBtn").click(function (){

				$("#adminDeleteModal").modal("hide");
			});
			$("#adminDeleteBtn").click(function (){

				$.ajax({
					"url":"delete/admin/page.html",
					"type":"post",
					"data":{
						"adminId":adminId,
					},
					"dataType":"json"
				})
			});

		});
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$("ul li:eq(2)").addClass("active");
		});
	</script>
</head>
<body>
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
			<div class="data_list">
				<div class="data_list_title">
					学生管理
				</div>
				<form  action="searchForm/student.html" class="form-search" method="post"  style="padding-bottom: 0px">
					<a href="to/addStudent.html" class="btn btn-success" type="button" style="margin-right: 50px;" >添加学生</a>
					<span class="data_search">
				<select id="searchType" name="searchType" style="width: 120px;">
					<option value="name">学生学号</option>
				</select>&nbsp;
				<input id="s_Text" name="sno" type="text"  style="width:120px;height: 20px;" class="input-medium search-query" value="">&nbsp;
				<button type="submit" class="btn btn-info" >搜索</button>
				</span>
				</form>
				<div>
					<table class="table table-striped table-bordered table-hover datatable">
						<thead style="background:#e0effd">
						<tr>
							<th>编号</th>
							<th>学号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>籍贯</th>
							<th>入学日期</th>
							<th>所属院系</th>
							<th>电子邮箱</th>
							<th>联系电话</th>
							<th>操作</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach  varStatus="s" var="student" items="${studentPOS}">
							<tr>
								<td>${student.id}</td>
								<td>${student.sno}</td>
								<td>${student.name}</td>
								<td>${student.sex}</td>
								<td>${student.hometown}</td>
								<td>${student.enroldate}</td>
								<td>${student.department}</td>
								<td>${student.email}</td>
								<td>${student.tel}</td>
								<td>
									<a href="to/Student/Edit/${student.id}/page.html" type="button" class="btn btn-primary btn-xs change"  id=${s.count}>修改<i class=" glyphicon glyphicon-pencil"></i></a>
									<a href="delete/student/page.html?studentId=${student.id}" type="button" class="btn btn-danger btn-xs delete" id=${s.count} >删除<i class=" glyphicon glyphicon-remove"></i></a>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<div align="center"><font color="red">提示内容</font></div>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	Copyright © 2016 - 2020  粤嵌科技 ,  All Rights Reserved
</div>
</body>
</html>