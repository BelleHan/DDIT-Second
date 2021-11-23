<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>DaManNa Webpage Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
    <!-- Styles -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/fontawesome-all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/swiper.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/magnific-popup.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
    
<style>
span {
	width: 60px;
	display: inline-block;
}

textarea {
	width: 40%;
	height: 280px;
}

#frm{
	background-color: #d81b60;
}
 #divf{ 
 	margin-left: 800px; 
 } 
 
 .a1{
 	color : white;
 }
 
 input[type=text]{
 	border: 3px solid orange;
 }
 #leg{
 	color: white;
 
 	border: 3px solid orange;
 }
 #ti{
 	color: white;
 }
</style>

<script>
$(function(){
	$('#mem').on('change',function(){
		$('#totalPrice').val($('#mem').val());
	});
});

</script>
</head>

<body>
       <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
        <div class="container">
            
            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="<%=request.getContextPath() %>/memberPicture.do">DaManNa</a>  

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Spify</a> -->

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/memberPicture.do">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/noticeList.do">Notice</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#<%=request.getContextPath() %>/test/spify/FAQ.jsp">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/freeList.do">Free Board</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/test/spify/review.jsp">Review</a>
                    </li>
               
                </ul>
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Payment</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
  
  <form id="frm" name="frm" action="payment.jsp">	<br><br><br><br>
    
	<div id="divf">
		<h3 id="ti">결제정보</h3>
		<p>
			<span class="a1">이름:</span> <input type="text" name="name">
		</p>
		<p>
			<span class="a1">아이디:</span> <input type="text" name="id">
		</p>
		
		<p>
			<span class="a1">핸드폰:</span><input type="text" name="phone">
		</p>
		
		<p>
		
		<span class="a1">회원권:</span>
			<select id="mem">
				<option value="1000">1일권</option>
				<option value="5000">7일권</option>
				<option value="20000">30일권</option>
			</select>
		</p>
	
		<p>
			<span class="a1">이벤트코드:</span><input type="text" name="code">
		</p>
		
		<p>
  			<span class="a1">결제금액:</span> <input type="text" id="totalPrice" name="totalPrice">  
		</p>
		<input type="submit" value="결제하기"> <input type="reset" value="취소하기">
		</div>
	<br><br><br><br>
	</form>  
	

	
 <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-col first">
                        <h6>About Spify</h6>
                        <p class="p-small">Spify is a business website Bootstrap HTML template designed to present startups in a beautiful manner with features for description</p>
                    </div> <!-- end of footer-col -->
                    <div class="footer-col second">
                        <h6>Links</h6>
                        <ul class="list-unstyled li-space-lg p-small">
                            <li>Important: <a href="terms.html">Terms & Conditions</a>, <a href="privacy.html">Privacy Policy</a></li>
                            <li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon Library</a>, <a href="#">Illustrations</a></li>
                            <li>Menu: <a class="page-scroll" href="#header">Home</a>, <a class="page-scroll" href="#details">Details</a>, <a class="page-scroll" href="#strengths">Strengths</a>, <a class="page-scroll" href="#contact">Contact</a></li>
                        </ul>
                    </div> <!-- end of footer-col -->
                    <div class="footer-col third">
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-facebook-f fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-twitter fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-pinterest-p fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <p class="p-small">We would love to hear from you <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a></p>
                    </div> <!-- end of footer-col -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->  
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © <a href="#your-link">Your name</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->

        <div class="container">
            <div class="row"> 
                <div class="col-lg-12">
                    <p class="p-small">Distributed by <a href="https://themewagon.com/">Themewagon</a></p> 
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
    
    	
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>
