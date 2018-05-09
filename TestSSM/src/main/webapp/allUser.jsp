<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <title>用户列表</title>
</head>
<body style="align-content: center">
<h6><a href="<%=basePath%>addUser.jsp">添加用户</a></h6>
<table border="1">
    <tbody>
    <tr>
        <th>ID</th>
        <th>账号</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
        <c:forEach items="${list}" var="admin">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.name}</td>
                <td>${admin.password}</td>
                <td>
                    <a href="<%=basePath%>getUser?id=${admin.id}">修改</a>
                    <a href="<%=basePath%>delUser?id=${admin.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>