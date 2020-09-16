<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
        <meta name="author" content="粤嵌科技" />
		<title>学生信息管理系统-登录界面</title>
		<link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css" />
		<link type="text/css" rel="stylesheet" href="static/css/style.css" />
		<script type="text/javascript" src="static/js/jQuery.js"></script>
	</head>
	<body class="loginbg">
		<div class="container">
			<form name="loginform" class="form-signin" action="do/login.html" method="post">
				<h2 class="form-signin-heading"><font color="gray">学生信息管理系统</font></h2>

				<div class="input-prepend">
				  	<span class="add-on"><i class="icon-user"></i></span>
				  	<input id="userName" name="userName" value="" type="text" class="input-block-level" placeholder="请输入登录账号" />
				</div>
				    
				<div class="input-prepend">
					<span class="add-on"><i class="icon-lock"></i></span>
					<input id="password" name="password" value="" type="password" class="input-block-level" placeholder="请输入登录密码" />
				</div>
		        <label class="radio inline">
		      	  	<input id="admin" type="radio" name="userType" value="admin"  checked /> 系统管理员
				</label>
				<label class="radio inline">
					<input id="student" type="radio" name="userType" value="student" />学生用户
				</label>
		        <label class="checkbox">
		          <input id="remember" name="remember" type="checkbox" value="ture" />记住我 &nbsp;&nbsp;&nbsp;&nbsp; <font id="error" color="red">${error}</font>
		        </label>
		        <div class="info">
			        <button class="btn btn-large btn-primary" type="submit">登录</button>
			        &nbsp;&nbsp;&nbsp;&nbsp;
			        <button class="btn btn-large btn-info" type="button">重置</button>
		        </div>
				<p align="center" style="padding-top: 20px;"> 粤嵌科技 &nbsp;©&nbsp;版权所有&nbsp;&nbsp;2020</p>
			</form>
		</div>
	</body>
</html>