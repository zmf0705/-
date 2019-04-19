<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
%>
<%@ page language="java" import="com.javen.model.User"%>
<%
	User user = (User) session.getAttribute("user1");
	session.setAttribute("user", user);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>建筑云</title>
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="Assets/css/responsive.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-chosen.css">
<script type="text/javascript">
	window.onload = function() {
		var result = ${result};
		if (result == 1) {
			alert("添加成功");
		}
	}
</script>
<style type="text/css">
legend {
	position: relative;
	text-align: center;
	height: 50px;
	padding-top: 10px;
	padding-bottom: 10px;
	margin-bottom: 2px;
	background-color: #e9e9e9;
	font-family: Consolas;
	font-size: 1.5em;
}

label {
	align-content: center;
	text-align: center;
	font-size: 1.1em;
}

button {
	margin-right: 18px;
}

.text {
	width: 500px;
	height: 100px;
}
</style>
<script type="text/javascript">
	function checkUserName() {
		var name = document.getElementById("user-name").value.trim();
		var nameRegex = /^[^@#]{3,16}$/;
		if (!nameRegex.test(name)) {
			document.getElementById("nameInfo").innerHTML = "项目名为3~16个字符，且不能包含”@”和”#”字符";
		} else {
			document.getElementById("nameInfo").innerHTML = "";
			return true;
		}
	}
	function checkTel() {
		var name = document.getElementById("tel").value.trim();
		var nameRegex = /^[1][3-5,7-8]\d{9}$/;
		if (!nameRegex.test(name)) {
			document.getElementById("telInfo").innerHTML = "输入的手机号不正确";
		} else {
			document.getElementById("telInfo").innerHTML = "";
			return true;
		}
	}
	function checkArea() {
		var name = document.getElementById("area").value.trim();
		var nameRegex = /^([1-9]\d{0,3}|10000)$/;
		if (!nameRegex.test(name)) {
			document.getElementById("areaInfo").innerHTML = "请输入10000以内的整数";
		} else {
			document.getElementById("areaInfo").innerHTML = "";
			return true;
		}
	}
	function checkDay() {
		var name = document.getElementById("day").value.trim();
		var nameRegex = /^([1-9]\d{0,3}|10000)$/;
		if (!nameRegex.test(name)) {
			document.getElementById("dayInfo").innerHTML = "工期在1000天以内";
		} else {
			document.getElementById("dayInfo").innerHTML = "";
			return true;
		}
	}
</script>
</head>
<body>

	<jsp:include page="head.jsp" flush="true" />

	<form action="<%=path%>/insertProject"
		style="margin-left: 500px; margin-top: 50px;">
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">项目名称</span> <input
				type="text" class="form-control" name="p_name" id="user-name"
				style="width: 300px;" onblur="checkUserName()"> <span
				id="nameInfo" style="color: red;"></span>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">面积(亩)</span> <input
				type="text" class="form-control" name="area" style="width: 300px;"
				onblur="checkArea()" id="area"> <span id="areaInfo"
				style="color: red;"></span>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">是否需要cad图纸</span>
			<div class="radio">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
					name="is_cad" id="optionsRadios1" value="是" checked> <span
					style="">是</span>
				</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
					name="is_cad" id="optionsRadios2" value="否"> <span style="">否</span>
				</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>
		<br>

		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">工期时长(天)</span> <input
				type="text" class="form-control" name="day" style="width: 300px;"
				id="day" onblur="checkDay()"> <span id="dayInfo"
				style="color: red;"></span>
		</div>
		<br>

		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">业务类型</span>
			<div>
				<select class="chosen-select" class="form-control"  name="serviceId" style="width: 300px;">
					<c:forEach items="${list}" var="service">
						<option value="${service.serviceId}">${service.serviceName}</option>
					</c:forEach>
				</select>
			</div>
		</div>

		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">地址</span> <input
				type="text" class="form-control" name="address"
				style="width: 300px;">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">联系方式</span> <input
				type="text" class="form-control" name="tel" style="width: 300px;"
				id="tel" onblur="checkTel()"> <span id="telInfo"
				style="color: red;"></span>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">价格</span> <input
				type="text" class="form-control" name="price" style="width: 300px;">
		</div>
		<br>
		
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">付款方式</span>
			<div>
				<select class="chosen-select" class="form-control"  name="payTypeId" style="width: 300px;">
					<c:forEach items="${list1}" var="payType">
						<option value="${payType.payId}">${payType.payName}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">详细信息</span> <input
				type="text" class="form-control" name="comment"
				style="width: 500px; height: 100px;">
		</div>
		<input type="hidden" name="is_pay" value="0"> 
		<input type="hidden" name="is_audit" value="0"> 
		<input type="hidden"
			name="u_id" value="${user.u_id}"> <br>
		<button class="btn btn-primary" onclick="submit">发布项目</button>
	</form>

</body>
<script type="text/javascript">
		$(function() {
		        $('.chosen-select').chosen();
		        $('.chosen-select-deselect').chosen({ allow_single_deselect: true });
		});
	</script>
</html>