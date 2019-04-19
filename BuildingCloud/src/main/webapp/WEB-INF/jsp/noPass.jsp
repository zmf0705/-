<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>建筑云</title>
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/service.css">
</head>

<body>

	<jsp:include page="head.jsp" flush="true" />

	<div style="width: 100%; float: left;">
		<h3>驳回项目</h3>
		<c:forEach items="${projects}" var="project">
			<form action="<%=path%>/payProject">
				<input type="hidden" name="id" value="${project.p_id}">
				<div class="responsive-tabs" style="float: left;">
					<ul class="join_d clearfix">

						<li>
							<div class="tu">
								<img src="Assets/upload/pic10.jpg" alt="" />
							</div>
							<div class="wen">
								<div class="title">${project.p_name}</div>
								<div class="des" style="height: 300px;">
									<p>建筑面积：${project.area}</p>
									<p>地址：${project.address}</p>
									<p>价格：${project.price}</p>
									<p>工期：${project.day}</p>
									<p>业务类型：${project.serviceName}</p>
									<p>详情：${project.comment}</p>
									<p>招商电话：${project.tel}</p>
									<p>支付状态：${project.is_pay}</p>
									<p>支付方式：${project.payName}</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</form>
		</c:forEach>
	</div>
	
	<div style="width: 100%; float: left;">
		<h3>完成项目</h3>
		<c:forEach items="${projects2}" var="project">
			<form action="<%=path%>/payProject">
				<input type="hidden" name="id" value="${project.p_id}">
				<div class="responsive-tabs" style="float: left;">
					<ul class="join_d clearfix">

						<li>
							<div class="tu">
								<img src="Assets/upload/pic10.jpg" alt="" />
							</div>
							<div class="wen">
								<div class="title">${project.p_name}</div>
								<div class="des" style="height: 300px;">
									<p>建筑面积：${project.area}</p>
									<p>地址：${project.address}</p>
									<p>价格：${project.price}</p>
									<p>工期：${project.day}</p>
									<p>业务类型：${project.serviceName}</p>
									<p>详情：${project.comment}</p>
									<p>招商电话：${project.tel}</p>
									<p>支付状态：${project.is_pay}</p>
									<p>支付方式：${project.payName}</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</form>
		</c:forEach>
	</div>
</body>
</html>
