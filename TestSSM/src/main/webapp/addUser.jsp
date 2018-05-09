<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>添加用户</title>
    <script type="text/javascript">
        function addUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>addUser";
            form.method="post";
            form.submit();
        }
    </script>
</head>
<body style="align-content: center">
<h1><%=path%>添加用户</h1>
<form action="" name="userForm">
    账号：<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br/>
    <input type="button" value="添加" onclick="addUser()">
</form>
</body>
</html>