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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>公司名称</title>
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="Assets/css/responsive.css">
</head>

<body>
	<jsp:include page="head.jsp" flush="true" />
	<div class="space_hx">&nbsp;</div>
	<div class="scd clearfix">
		<div class="news clearfix">
			<div class="news_l">
				<div class="scd_top">
					<span>头条新闻</span>
					<div class="pst">
						当前位置：<a href="">首页</a>-<a href="">新闻中心</a>
					</div>
				</div>
				<div class="new_m">
					<div class="box mainPhoto">
						<span class="goleft nextPage"><a href="javascript:void(0)"><img
								src="Assets/images/prev.png" /></a></span>
						<div class="go slidegrid">
							<ul class="slideitems">
								<li>
									<div class="tu">
										<a href="<%=path %>/news_d"><img src="Assets/upload/news1.jpg"
											alt="" /></a>
									</div>

									<div class="n_m">

										<div class="title">
											<span>2018-03-12</span>
											<p class="name">
												<a href="<%=path %>/news_d">关注2018楼市！这七句话你一定要记住</a>
											</p>
										</div>
										<div class="des">住有所居、安居宜居，是万千家庭的共同心愿。</div>
									</div>

								</li>
							</ul>
						</div>
						<span class="goright prevPage"><a href="javascript:void(0)"><img
								src="Assets/images/next.png" /></a></span>
					</div>
					<script>
                $(function(){
                $('.mainPhoto .slidegrid').scrollable({size:1,circular:true,next:'.prevPage',prev:'.nextPage'}).autoscroll();
                }); 
                </script>
					<div class="n_m">
						<div class="title">
							<span>2018-03-03</span>
							<p class="name">
								<a href="<%=path %>/news_d">为爱奔跑，点亮白塔，建筑云助力盲少年实现心愿</a>
							</p>
						</div>
						<div class="des">
							3月3日晚上6点，由成都人民广播电台主办的“白塔湖公益夜跑”活动温暖启幕。这次活动是为了给一些盲少年进行公益募捐宣传，共有五百多个爱心人士参加活动。...
						</div>
					</div>
				</div>
			</div>
			<div class="news_r">
				<div class="scd_top">
					<span>全部新闻</span>
				</div>
				<div class="new_m">
					<div class="n_m">
						<div class="title">
							<span>2018-01-25</span>
							<p class="name">
								<a href="<%=path %>/news_d">建筑云集团四川媒体新年宴请温暖成都</a>
							</p>
						</div>
						<div class="des">
							1月25日，“美好•一见如故”建筑云集团四川媒体新年宴请，于成都大酒店隆重举行。成都各大主流媒体悉数到场，与数位城市生活精英一道，共赴这场美好之约...
						</div>
					</div>
					<div class="n_m">
						<div class="title">
							<span>2018-01-18</span>
							<p class="name">
								<a href="<%=path %>/news_d">共享共融，美好同行，建筑云中国召开2018年度供方大会</a>
							</p>
						</div>
						<div class="des">
							2018年1月18日，建筑云中国2018年度供方大会在四川大酒店召开，建筑云众多高层领导出席大会，与来自全国的300余位合作伙伴相关负责人共聚一堂。会上，建筑云中国为27家优秀供方合作...
						</div>
					</div>
					<div class="n_m">
						<div class="title">
							<span>2018-01-18</span>
							<p class="name">
								<a href="<%=path %>/news_d">首入福建！建筑云成功竞得福州地块</a>
							</p>
						</div>
						<div class="des">
							1月18日，建筑云集团成功竞得福州泉头优质地块。这也是建筑云首次进入福建，开辟新版图。截至目前，建筑云已入驻26省100余城，营造400余个美好家园...
						</div>
					</div>
					<div class="n_m">
						<div class="title">
							<span>2017-12-31</span>
							<p class="name">
								<a href="<%=path %>/news_d">致敬美好 建筑云举行2017年度总结表彰大会</a>
							</p>
						</div>
						<div class="des">
							12月31日，建筑云举行2017年度总结表彰大会和迎新晚宴，此次会议主题为“礼赞生活，致敬美好”。来自建筑云本级的1300名员工代表欢聚一堂，共度盛会...
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="space_hx">&nbsp;</div>
		<div class="pages">
			<a href="">首页</a> <a href="">上一页</a> <a href="">下一页</a> <a href="">尾页</a>
		</div>
	</div>

</body>
</html>
