<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="com.javen.model.User"%>
<%
	User user = (User) session.getAttribute("user1");
	session.setAttribute("user", user);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>建筑云</title>

<link rel="stylesheet" type="text/css" href="Assets/css/reset.css" />
<link rel="stylesheet" type="text/css" href="Assets/css/thems.css">
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/dialog.css">
<script src="js/jquery.dialog.js"></script>
</head>
<body>

	<!-- 头部 -->
	<div class="header">
		<div class="head clearfix">
			<div class="logo">
				<a href=""><img src="Assets/images/logo.jpg" alt="" /></a>
			</div>

			<div class="head_r clearfix">

				<div class="nav_m">

					<div class="n_icon">导航栏</div>

					<ul class="nav clearfix">

						<li><a href="/BuildingCloud/home">首页</a></li>
						<li><a href="/BuildingCloud/about">关于我们</a></li>

						<li><a href="/BuildingCloud/news">新闻中心</a></li>

						<c:if test="${user.role_id == 1}">
							<li><a href="/BuildingCloud/service?user=${user}">支付工程</a></li>
						</c:if>
						<li><a href="/BuildingCloud/join">合作伙伴</a></li>

						<li><a href="/BuildingCloud/attrct">人才理念</a></li>
						<c:if test="${user.role_id == 1}">
							<li><a href="/BuildingCloud/invite">发布项目</a></li>
							<li><a href="/BuildingCloud/noPass">驳回和完成</a></li>
						</c:if>
						<c:if test="${user.role_id == 2}">
							<li><a href="/BuildingCloud/myProject">我的项目</a></li>
							<c:if test="${user.status == 1}">
							<li><a href="/BuildingCloud/noWork?user=${user}">接单</a></li>
						</c:if>
						<c:if test="${user.status == 2}">
							<li><a href="/BuildingCloud/isWork?user=${user}">不接单</a></li>
						</c:if>
						</c:if>
						<c:if test="${user.user_name == '' || user.user_name == null}">
							<li><a href="/BuildingCloud/login">登录</a></li>
						</c:if>
						<c:if test="${user.user_name != '' && user.user_name != null}">
							<li><a href="javascript:void(0);" onclick="js_method()">${user.user_name}</a></li>
							<li><a href="/BuildingCloud/exit">退出</a></li>
						</c:if>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	//确认框：自定义内容格式，阻止onConfrim的执行
	function js_method() {
		$
				.sendConfirm({
					title : '个人信息',
					content : '<form action="/BuildingCloud/updatePassword">'
							+ '<div id="addIpBox">'
							+ '<div class="frm-item">'
							+ '<input type="hidden" name="u_id" value="${user.u_id}">'
							+ '<div class="frm-label"><span class="requireIcon">*</span> 用户名:</div>'
							+ '<input type="text" style="border:0px;" readonly="readonly" class="frm-input" name="user_name" value="${user.user_name}">'
							+ '<div class="frm-item">'
							+ '<div class="frm-label"><span class="requireIcon">*</span> 密码(可修改):</div>'
							+ '<input type="text" class="frm-input" name="password" value="${user.password}">'
							+ '<div class="frm-item">'
							+ '<div class="frm-label"><span class="requireIcon">*</span> 联系方式:</div>'
							+ '<input type="text" style="border:0px;" readonly="readonly" class="frm-input" name="tel" value="${user.tel}">'
							+ '<div class="frm-item">'
							+ '<div class="frm-label"><span class="requireIcon">*</span> 公司名称:</div>'
							+ '<input type="text" style="border:0px;" readonly="readonly" class="frm-input" name="company" value="${user.company}">'
							+ '</div>'
							+ '<button onclick="submit">修改密码</button>'
							+ '</form>',
					width : 260,
					onConfirm : function() {
						console.log('点击确认！');
					},
					onCancel : function() {
						console.log('点击取消！');
					},
					onClose : function() {
						console.log('点击关闭！');
					}
				});
	}
</script>
</html>