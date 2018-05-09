<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<table>
	<thead>
	 	<tr>
	 		<th>用户id</th>
	 		<th>用户名</th>
	 		<th>密码</th>
	 		<th>操作</th>
	 	</tr>
	</thead>
	
	
	 <tbody>
	 	<s:iterator value="list" var="a">
		 	<tr>
		 		<td>${a.id}</td>
		 		<td>${a.name}</td>
		 		<td>${a.pwd}</td>
		 		
		 		<td>
		 			<a href="/index.jsp">添加</a>
		 			<a href="/testaction_delete?user.id=${a.id}">删除</a>
		 			<a href="/addUser.jsp?id=${a.id}&user=${a.name}&pwd=${a.pwd}">修改</a>
		 		</td>
		 	</tr>
	 	</s:iterator>
	 </tbody>
	 </table>
  </body>
</html>
