<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

<title>人才理念</title>
<link rel="stylesheet" type="text/css" href="css1/demo.css" />
<link rel="stylesheet" type="text/css" href="css1/slicebox.css" />
<link rel="stylesheet" type="text/css" href="css1/custom.css" />
<script type="text/javascript" src="js1/modernizr.custom.46884.js"></script>
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="Assets/css/responsive.css">

</head>

<body>
	<jsp:include page="head.jsp" flush="true" />
	<div class="container">

		<div class="wrapper">

			<ul id="sb-slider" class="sb-slider">

				<li><a target="_blank"><img src="images1/2.png"
						alt="image1" /></a>

					<div class="sb-description">

						<h3>人才理念</h3>

					</div></li>

				<li><a target="_blank"><img src="images1/3.png"
						alt="image2" /></a>

					<div class="sb-description">

						<h3>选才观</h3>

					</div></li>

				<li><a target="_blank"><img src="images1/4.png"
						alt="image1" /></a>

					<div class="sb-description">

						<h3>育才观</h3>

					</div></li>

				<li><a target="_blank"><img src="images1/5.png"
						alt="image1" /></a>

					<div class="sb-description">

						<h3>用才观</h3>

					</div></li>

				<li><a target="_blank"><img src="images1/6.png"
						alt="image1" /></a>

					<div class="sb-description">

						<h3>留才观</h3>

					</div></li>

			</ul>
			<div id="shadow" class="shadow"></div>



			<div id="nav-arrows" class="nav-arrows">

				<a href="#">Next</a> <a href="#">Previous</a>

			</div>

		</div>
		<!-- /wrapper -->

	</div>

	<script src="http://www.jq22.com/jquery/1.8.3/jquery.min.js"></script>

	<script type="text/javascript" src="js1/jquery.slicebox.js"></script>

	<script type="text/javascript">

            $(function() {

                

                var Page = (function() {



                    var $navArrows = $( '#nav-arrows' ).hide(),

                        $shadow = $( '#shadow' ).hide(),

                        slicebox = $( '#sb-slider' ).slicebox( {

                            onReady : function() {



                                $navArrows.show();

                                $shadow.show();



                            },

                            orientation : 'r',

                            cuboidsRandom : true,

                            disperseFactor : 30

                        } ),

                        

                        init = function() {



                            initEvents();

                            

                        },

                        initEvents = function() {



                            // add navigation events

                            $navArrows.children( ':first' ).on( 'click', function() {



                                slicebox.next();

                                return false;



                            } );



                            $navArrows.children( ':last' ).on( 'click', function() {

                                slicebox.previous();

                                return false;

                            } );
                    };

                        return { init : init };
                        })();



                Page.init();



            });

        </script>

</body>

</html>
