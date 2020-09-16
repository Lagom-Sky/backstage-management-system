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
	<script type="text/javascript">
		$(document).ready(function(){
			$("ul li:eq(1)").addClass("active");
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
					管理员管理
				</div>
				<form  action="searchForm/admin.html" class="form-search" method="post"  style="padding-bottom: 0px">
					<a  href="to/addAdmin.html" class="btn btn-success" type="button" style="margin-right: 50px;" >添加管理员</a>
					<span class="data_search">
			<select id="searchType" name="searchType" style="width: 120px;">
				<option value="name">管理员名称</option>
			</select>&nbsp;
			<input id="s_Text" name="adminName" type="text"  style="width:120px;height: 20px;" class="input-medium search-query" value="">&nbsp;
			<button type="submit" class="btn btn-info">搜索</button>
			</span>
				</form>
				<div>
					<table class="table table-striped table-bordered table-hover datatable">
						<thead style="background:#e0effd">
						<tr>
							<th>编号</th>
							<th>管理员名称</th>
							<th>管理员姓名</th>
							<th>电子邮箱</th>
							<th>角色</th>
							<th>操作</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach  varStatus="s" var="admin" items="${adminPOS}">
							<tr>
								<td>${admin.id}</td>
								<td>${admin.username}</td>
								<td>${admin.name}</td>
								<td>${admin.email}</td>
								<td>${admin.role}</td>
								<td>
									<a href="to/Admin/Edit/${admin.id}/page.html" type="button" class="btn btn-primary btn-xs change"  id=${s.count}>修改<i class=" glyphicon glyphicon-pencil"></i></a>
									<a href="delete/admin/page.html?adminId=${admin.id}" type="button" class="btn btn-danger btn-xs delete" id=${s.count} >删除<i class=" glyphicon glyphicon-remove"></i></a>
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