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
<title>激活成功</title>
</head>
<body>
	<h1 style="font-size:26px;text-align:center">恭喜，您的邮箱已经成功激活</h1>
</body>
</html>