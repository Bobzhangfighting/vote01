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
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>


 
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="profile">
		您好,${sessionScope.loginUser.vuusername}
		<span class="return"><a href="page/list.jsp">返回列表</a></span>
		<span class="addnew"><a href="page/add.jsp">添加新投票</a></span>
		<span class="modify"><a href="page/manage.jsp">维护</a></span>
		
	</div>
	<div class="search">
		<form method="post" action="Subject!search.action">
			<input type="text" name="keywords" class="input-text" value=""/><input type="submit" name="submit" class="input-button" value="" />
		</form>
	</div>
</div>

<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list">
	
	
		<li  class="odd" >
			<h4>				
				<a href="Vote!view.action?entityId=103">&#xD1;&#xA1;&#xB3;&#xF6;&#xC4;&#xE3;&#xD0;&#xC4;&#xC4;&#xBF;&#xD6;&#xD0;&#xD7;&#xEE;&#xBA;&#xC3;&#xB5;&#xC4;&#xCF;&#xC2;&#xD4;&#xD8;&#xB9;&#xA4;&#xBE;&#xDF;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=103">维护</a></div>
			<p class="info">共有 5 个选项，已有  个网友参与了投票。</p>
		</li>
	
		<li  >
			<h4>				
				<a href="Vote!view.action?entityId=104">&#xD1;&#xA1;&#xB3;&#xF6;&#xC4;&#xE3;&#xD0;&#xC4;&#xC4;&#xBF;&#xD6;&#xD0;&#xD7;&#xEE;&#xBA;&#xC3;&#xB5;&#xC4;&#xCA;&#xE4;&#xC8;&#xEB;&#xB7;&#xA8;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=104">维护</a></div>
			<p class="info">共有 12 个选项，已有  个网友参与了投票。</p>
		</li>
	
		<li  class="odd" >
			<h4>				
				<a href="Vote!view.action?entityId=105">&#xD1;&#xA1;&#xB3;&#xF6;&#xC4;&#xE3;&#xD0;&#xC4;&#xC4;&#xBF;&#xD6;&#xD0;&#xD7;&#xEE;&#xBA;&#xC3;&#xB5;&#xC4;&#xCD;&#xF8;&#xC2;&#xE7;&#xC1;&#xC4;&#xCC;&#xEC;&#xB9;&#xA4;&#xBE;&#xDF;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=105">维护</a></div>
			<p class="info">共有 7 个选项，已有  个网友参与了投票。</p>
		</li>
	
		<li  >
			<h4>				
				<a href="Vote!view.action?entityId=440">&#xC4;&#xE3;&#xD7;&#xEE;&#xCF;&#xEB;&#xC7;&#xF8;&#xB5;&#xC4;&#xB5;&#xD8;&#xB7;&#xBD;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=440">维护</a></div>
			<p class="info">共有 2 个选项，已有  个网友参与了投票。</p>
		</li>
	
		<li  class="odd" >
			<h4>				
				<a href="Vote!view.action?entityId=101">&#xD1;&#xA1;&#xB3;&#xF6;&#xC4;&#xE3;&#xD0;&#xC4;&#xC4;&#xBF;&#xD6;&#xD0;&#xD7;&#xEE;&#xBA;&#xC3;&#xB5;&#xC4;&#xE4;&#xAF;&#xC0;&#xC0;&#xC6;&#xF7;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=101">维护</a></div>
			<p class="info">共有 6 个选项，已有 9 个网友参与了投票。</p>
		</li>
	
		<li  >
			<h4>				
				<a href="Vote!view.action?entityId=102">&#xD1;&#xA1;&#xB3;&#xF6;&#xC4;&#xE3;&#xD0;&#xC4;&#xC4;&#xBF;&#xD6;&#xD0;&#xD7;&#xEE;&#xBA;&#xC3;&#xB5;&#xC4;&#xC9;&#xB1;&#xB6;&#xBE;&#xC8;&#xED;&#xBC;&#xFE;</a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=102">维护</a></div>
			<p class="info">共有 10 个选项，已有  个网友参与了投票。</p>
		</li>
	
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>