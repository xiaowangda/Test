<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
	<meta http-equiv="Expires" content="0" />
    <style type="text/css">
        html, body {
            margin: 0;
            padding: 0;
            border: 0;
        }
    </style>
</head>
<body>
    <div id="divPlugin"></div>
</body>
<script src="js/jquery-1.7.1.min.js"></script>
<script src="codebase/webVideoCtrl.js"></script>
<script src="js/iframe.js"></script>
</html>
