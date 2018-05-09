<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <%@ page isELIgnored="false" %>
    <title>登录</title>
</head>
<body>
<h1>用户登录</h1>
<form action="login" method="post">
    账号:<input id="username" name="name" type="text"><br>
    密码:<input id="password" name="password" type="password"><br>
    <input type="submit" value="登录">
    <a href="register.jsp"><input type="button" value="立即注册"></a>
</form>
</body>
</html>