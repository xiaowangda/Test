<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2018/4/4
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<h1>用户注册</h1>
<form action="/register" method="post">
    账号:<input id="username" name="name" type="text"><br>
    密码:<input id="password" name="password" type="password"><br>
        <input type="submit" value="注册">
    <a href="login.jsp"><input type="button" value="返回登录"></a>
</form>

</body>
</html>
