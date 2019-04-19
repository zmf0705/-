<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>建筑云</title>
<link rel="stylesheet" type="text/css" href="Assets/css/reset.css" />


<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Assets/js/js_z.js"></script>
<script type="text/javascript" src="Assets/js/banner.js"></script>

<script language="javascript">
    $(function() {
        $('#owl-demo').owlCarousel({
            items : 1,
            navigation : true,
            navigationText : [ "上一个", "下一个" ],
            autoPlay : true,
            stopOnHover : true
        }).hover(function() {
            $('.owl-buttons').show();
        }, function() {
            $('.owl-buttons').hide();
        });
    });
</script>
</head>
<body>
    
   <jsp:include page="head.jsp" flush="true"/>

    <div id="banner" class="banner">
        <div id="owl-demo" class="owl-carousel">
            <a class="item" target="_blank" href=""
                style="background-image: url(Assets/upload/banner.jpg)"> <img
                src="Assets/upload/banner.jpg" alt="">
            </a> <a class="item" target="_blank" href=""
                style="background-image: url(Assets/upload/banner1.png)"> <img
                src="Assets/upload/banner1.png" alt="">
            </a>
        </div>
    </div>
    <!--幻灯片-->
    <div class="space_hx">&nbsp;</div>
    <div class="i_ma">
        <div class="i_name">
            我们的产业
            <p>QIHui Our industry</p>
        </div>
        <div class="space_hx">&nbsp;</div>
        <ul class="clearfix">
            <li><a href=""> <img src="Assets/images/p1.png" alt="" />
                    <h6>一站式服务</h6>
                    <div class="des">One Stop Civil Affairs Management</div>
            </a></li>
            <li><a href=""> <img src="Assets/images/p2.png" alt="" />
                    <h6>高级公寓</h6>
                    <div class="des">Advanced Apartment</div>
            </a></li>

            <li><a href=""> <img src="Assets/images/p4.png" alt="" />
                    <h6>购物商城</h6>
                    <div class="des">Shopping Mall</div>
            </a></li>
            <li><a href=""> <img src="Assets/images/p5.png" alt="" />
                    <h6>商务办公</h6>
                    <div class="des">Business Office</div>
            </a></li>
            <li><a href=""> <img src="Assets/images/p6.png" alt="" />
                    <h6>商业街</h6>
                    <div class="des">Theme-oriented Commercial Street</div>
            </a></li>
            <li><a href=""> <img src="Assets/images/p3.png" alt="" />
                    <h6>物业管理</h6>
                    <div class="des">Property Management</div>
            </a></li>
        </ul>
    </div>
</body>
</html>