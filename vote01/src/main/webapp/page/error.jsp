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
<title>激活失败</title>
</head>
<body>
	<h1>sorry!!,邮箱激活失败</h1>
</body>
</html>