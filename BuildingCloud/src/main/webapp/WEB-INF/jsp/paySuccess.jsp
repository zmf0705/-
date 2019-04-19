<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>支付成功</title>
<style type="text/css">

div img {
	width: 200px;
	height: 200px;
}

</style>
</head>

<body>
	<div style="margin-left: 500px; margin-top: 50px;">
		<img src="images1/duihao.png" />
		<h1 style="margin-left: 20px;">支付成功</h1>
		<br>
		<form action="<%=path %>/service">
		<button class="btn btn-primary" style="margin-left: 20px;">返回原页面</button>
		</form>
	</div>
</body>
</html>