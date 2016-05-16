<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html >
<html >
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>注   册</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<script type="text/javascript">


</script>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	<!--  
		<form method="get" action="index.html">
			<input type="text" name="keywords" class="input-text" /><input type="submit" name="submit" class="input-button" value="" />
		</form>
	-->	
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	   <form method="post" action="user_reg.action"> 
			<dl>
				
				<dt>用户名：</dt>
				<dd><input type="text" class="input-text" name="vuusername" value=""/></dd>
				<dt>密码：</dt>
				<dd><input type="password" class="input-text" id="vupassword" name="vupassword" value=""/></dd>
				<dt>确认密码：</dt>
				<dd><input type="password" class="input-text" id="confirmPassword" name="confirmPassword" value=""/></dd>
				<dt>电子邮箱：</dt>
				<dd><input type="text" class="input-text" name="email" value=""/></dd>
				<dd><input type="submit" class="input-button" id="sub" name="submit" value="" /></dd>
			</dl>
		</form>
		<div class="error">${sessionScope.errorMsg}</div>
			<c:remove var="errorMsg" scope="session"/><!-- 清除session中数据 -->
	</div>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>