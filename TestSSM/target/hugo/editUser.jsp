<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>修改用户</title>
    <script type="text/javascript">
        function updateUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>updateUser";
            form.method="post";
            form.submit();
        }
    </script>
</head>
<body style="align-content: center">
<h1>修改用户</h1>
<form action="" name="adminForm">
    <input type="hidden" name="id" value="${admin.id }"/>
    账号：<input type="text" name="name" value="${admin.name }"/><br>
    密码：<input type="text" name="password" value="${admin.password }"/><br>
    <input type="button" value="修改" onclick="updateUser()"/>
</form>
</body>
</html>