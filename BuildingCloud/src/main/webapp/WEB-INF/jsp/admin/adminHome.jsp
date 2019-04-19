<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>

<link rel="stylesheet" type="text/css"
	href="/BuildingCloud/admin/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="/BuildingCloud/admin/css/default.css">
<link rel="stylesheet" href="/BuildingCloud/admin/css/bootstrap.min.css">
<link rel="stylesheet" href="/BuildingCloud/admin/css/style.css">
<link
	href="http://cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<script type="text/javascript">
	var result = ${result};
	var result1 = ${result1};
	if (result == 1) {
		alert("删除成功");
	}
	if (result1 == 1) {
		alert("委派成功");
	}
</script>
<body>
	<div class="container pb30">
		<div class="clear-backend">
			<div class="avatar">
				<div>
					<img src="img/admin.png" alt="">
				</div>
			</div>

			<!-- tab-menu -->

			<input type="radio" class="tab-1" name="tab"> <span>指派任务</span><i
				class="fa fa-home"></i> <input type="radio" class="tab-2" name="tab"
				checked="checked"> <span>项目审核</span> <i class="fa fa-medium"></i>
			<input type="radio" class="tab-3" name="tab"> <span>用户管理</span>
			<i class="fa fa-user"></i>


			<!-- tab-top-bar -->
			<div class="top-bar">
				<ul>
					<li><a href="/BuildingCloud/admin/adminExit" title="退出"> <i
							class="fa fa-sign-out"></i>
					</a></li>
				</ul>
			</div>

			<!-- tab-content -->
			<div class="tab-content">

				<section class="tab-item-1">
				<table class="table table-striped"
					style="font-size: 18px; font-weight: bolder;">
					<tr>
						<td>项目id</td>
						<td>项目名</td>
						<td>工期</td>
						<td>地址</td>
						<td>联系方式</td>
						<td>价格</td>
						<td>委派</td>
					</tr>

					<c:forEach items="${list1}" var="project">
						<tr>
							<td>${project.p_id}</td>
							<td>${project.p_name}</td>
							<td>${project.day}</td>
							<td>${project.address}</td>
							<td>${project.tel}</td>
							<td>${project.price}</td>
							<td><div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown">
										委派任务 <span class="caret"></span>
									</button>

									<ul class="dropdown-menu">
										<c:forEach items="${list2}" var="user">
											<li><a
												href="/BuildingCloud/admin/appointProject?u_id=${user.u_id}&p_id=${project.p_id}">${user.user_name}</a></li>
										</c:forEach>

									</ul>
								</div></td>
						</tr>
					</c:forEach>
				</table>
				</section>

				<!-- 项目审核 -->
				<section class="tab-item-2">
				<table class="table table-striped"
					style="font-size: 18px; font-weight: bolder;">
					<tr>
						<td>项目名</td>
						<td>面积（亩）</td>
						<td>cad图纸</td>
						<td>工期</td>
						<td>地址</td>
						<td>联系方式</td>
						<td>价格</td>
						<td style="width: 200px;">详情</td>
						<td>审核</td>
					</tr>

					<c:forEach items="${lists}" var="project">
						<tr>
							<td>${project.p_name}</td>
							<td>${project.area}</td>
							<td>${project.is_cad}</td>
							<td>${project.day}</td>
							<td>${project.address}</td>
							<td>${project.tel}</td>
							<td>${project.price}</td>
							<td>${project.comment}</td>
							<td><button class="btn btn-danger"
									onclick="auditProject(${project.p_id})">通过</button>
								<button class="btn btn-warning"
									onclick="auditNotProject(${project.p_id})">驳回</button></td>
						</tr>
					</c:forEach>
				</table>
				</section>

				<!-- 用户管理 -->
				<section class="tab-item-3">
				<table class="table table-striped"
					style="font-size: 18px; font-weight: bolder;">
					<tr>
						<td>用户id</td>
						<td>用户名</td>
						<td>密码</td>
						<td>联系方式</td>
						<td>公司名称</td>
						<td>操作</td>
					</tr>

					<c:forEach items="${list}" var="user">
						<tr>
							<td>${user.u_id}</td>
							<td>${user.user_name}</td>
							<td>${user.password}</td>
							<td>${user.tel}</td>
							<td>${user.company}</td>
							<td><button class="btn btn-danger"
									onclick="deleteUser(${user.u_id})">删除</button></td>
						</tr>
					</c:forEach>
				</table>
				</section>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/BuildingCloud/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/BuildingCloud/admin/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function auditProject(id) {
		 var word = prompt("请输入审核意见","");
        	 window.location.href = "/BuildingCloud/admin/auditProject?id="+id+"&word="+word+"";
	}
	
	function auditNotProject(id) {
		var word = prompt("请输入驳回意见","");
       	 window.location.href = "/BuildingCloud/admin/auditNotProject?id="+id+"&word="+word+"";
	}
	
	function deleteUser(id) {
		 var ansswer = confirm("确定删除此用户？");
        if(ansswer){
       	 window.location.href = "/BuildingCloud/admin/deleteUser?id=" + id;
        }
	}
	
	function appointProject(id) {
      	 window.location.href = "/BuildingCloud/admin/appointProject?id=" + id;
	}
</script>
</html>