<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2018/4/10
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<base href="<%=basePath%>">
<title>首页</title>
</head>
<body>
    <h5 style="align-content: center">
        <a href="<%=basePath%>getAllUser">进入用户管理页</a>
    </h5>
</body>
</html>
