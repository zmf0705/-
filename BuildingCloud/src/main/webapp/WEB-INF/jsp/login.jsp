<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="login/css/default.css">
<link rel="stylesheet" type="text/css" href="login/css/styles.css">
<style type="text/css">
.checkbox, .radio {
	position: relative;
	display: block;
	margin-top: 10px;
	margin-bottom: 10px
}

.checkbox label, .radio label {
	min-height: 20px;
	padding-left: 20px;
	margin-bottom: 0;
	font-weight: 400;
	cursor: pointer
}
</style>
<script type="text/javascript">
	window.onload = function() {
		var result = $
		{
			result
		}
		;
		if (result == 1) {
			alert("注册成功");
		} else {
			alert("注册失败");
		}
	}
</script>
<title>登录</title>
</head>
<body>
	<div class="htmleaf-container">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
					for="tab-1" class="tab">登录</label> <input id="tab-2" type="radio"
					name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
				<div class="login-form">
					<form action="<%=path%>/userLogin">
						<div class="sign-in-htm">
							<div class="group">
								<label class="label">用户名</label> <input type="text"
									class="input" name="user_name">
							</div>
							<div class="group">
								<label class="label">密码</label> <input type="password"
									class="input" name="password">
							</div>
							<div class="radio">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios1" value="1" checked>
									<span style="color: white;">甲方</span>
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios2" value="2"> 
									<span style="color: white;">乙方</span>
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios2" value="0"> 
								<span style="color: white;">管理员</span>
								</label>
							</div>
							<div class="group">
								<button class="button" onclick="submit">登录</button>
							</div>
							<div class="hr"></div>
							<div class="foot-lnk">
								<a href="#forgot">忘记密码?</a>
							</div>
						</div>
					</form>
					<div class="sign-up-htm">
						<form action="<%=path%>/registe">
							<div class="group">
								<label class="label">用户名</label> <input type="text"
									class="input" name="user_name">
							</div>
							<div class="group">
								<label class="label">密码</label> <input type="password"
									class="input" name="password">
							</div>
							<div class="group">
								<label class="label">公司名称</label> <input type="text"
									class="input" name="company">
							</div>
							<div class="group">
								<label class="label">联系方式</label> <input type="text"
									class="input" name="tel">
							</div>
							<div class="radio">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios1" value="1" checked>
									<span style="color: white;">甲方</span>
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios2" value="2"> 
									<span style="color: white;">乙方</span>
									
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role_id"
									id="optionsRadios2" value="0"> 
								<span style="color: white;">管理员</span>
								</label>
							</div>
							<input type="hidden"
									class="input" name="u_status" value="1">
							<div class="group">
								<button class="button" onclick="submit">注册</button>
							</div>
						</form>
						<div class="hr"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>