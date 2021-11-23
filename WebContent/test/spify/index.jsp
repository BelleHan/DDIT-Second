<%@page import="damanna.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	.img-fluid{
		width : 600px;
		height: 700px;
	}
	</style> 
	<script>
	$(function(){
		
	$(".img-fluid").on("click",function(){
		
			id = $(this).attr("id");
			pic = $(this).next().val();
			
			console.log(id, pic);
	
	$.ajax({
		url : "<%=request.getContextPath()%>/memberLike.do",
 		data : {"id" : id,
 				"pic": pic},
		success: function(data){
			console.log(data);
			alert("좋아요");
			$('#match_div').append(data);
		},
		error : function(xhr){
			alert(xhr.status);
		},
		dataType : "text"
		
		})
	})//ajax
})
	
	</script>   
</head>
<body data-spy="scroll" data-target=".fixed-top">
<%
	List<MemberVO> memList = (List<MemberVO>)request.getAttribute("memList");
%>   
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
                        <a class="nav-link page-scroll" href="#header">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/noticeList.do">Notice</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/test/spify/FAQ.jsp">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/freeList.do">Free Board</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/test/spify/review.jsp">Review</a>
                    </li>
                    
                	<li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My Page</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item page-scroll" href="<%=request.getContextPath()%>/test/spify/mypage.jsp">My Page</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="<%=request.getContextPath()%>/js-tetris-master/tetris.jsp">게임하기</a>           
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="<%=request.getContextPath()%>/memberLogout.do">로그아웃</a>           
                        </div>
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
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <div class="text-container">
                        <h3>We offer complete community solutions based on Damanna!</h3>
                        <a class="btn-solid-lg page-scroll" href="#projects">Swipe</a>
                        <a class="btn-solid-lg page-scroll" href="#chat">Chatting</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->

    </header> <!-- end of header -->
    <!-- end of header -->


  
    <!-- Projects -->
    <div id="projects" class="slider-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">      
                    
						<!-- Text Slider -->
                    <div class="slider-container">
                        <div class="swiper-container text-slider">
                            <div class="swiper-wrapper">
 <%
 
 	for(int i=0; i<memList.size(); i++) {
%>
                             
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="image-container">
<!--                                                 <img class="img-fluid" src="images/hongchul.jpg" alt="alternative"> -->
                                               <img class="img-fluid" id="<%=memList.get(i).getMember_id() %>" src="<%=request.getContextPath() %>/<%=memList.get(i).getMember_img1() %>" alt="alternative">
                                               <input type="hidden" id="pic" name="pic" value="<%=memList.get(i).getMember_img1() %>">
                                            </div> <!-- end of image-container -->
                                        </div> <!-- end of col -->
                                        <div class="col-lg-6">
                                            <div class="text-container">
<!--                                                 <h4>노홍철</h4> -->
                                                <h4><%=memList.get(i).getMember_nm() %></h4>
<!--                                                 <p>나이</p> -->
                                                <p><%=memList.get(i).getMember_bir() %></p>
<!--                                                 <p class="testimonial-text">"좋아 가는거야"</p>      -->
                                                <p class="testimonial-text"><%=memList.get(i).getProfile_intro() %></p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
                                

<% 		
 	}
%>  


                            </div> <!-- end of swiper-wrapper -->
                            
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->

                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of text slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
	<div style = "text-align:center">
		<a href="#"><img src="<%=request.getContextPath() %>/test/spify/images/icon.jpg" alt=""></a>
	</div>
    </div> <!-- end of slider-1 -->
    <!-- end of projects -->


    <!-- Invitation -->
    <div id="chat" class="basic-7">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <a class="btn-solid-lg page-scroll" href="<%=request.getContextPath() %>/test/spify/mypage.jsp">마이 페이지</a>
                    <a class="btn-solid-lg page-scroll" href="<%=request.getContextPath() %>/test/spify/match.jsp" target="ifr">좋아요</a>
                    <a class="btn-solid-lg page-scroll" href="<%=request.getContextPath() %>/test/spify/chat.jsp" target="ifr2">메시지</a>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div id="match_div">
            </div>
             <iframe name="ifr2" width="500px" height="600px" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0> </iframe> 
        </div> <!-- end of container -->
    </div> <!-- end of basic-7 -->
    <!-- end of invitation -->



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
    <script src="<%=request.getContextPath() %>/test/spify/js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="<%=request.getContextPath() %>/test/spify/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="<%=request.getContextPath() %>/test/spify/js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="<%=request.getContextPath() %>/test/spify/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="<%=request.getContextPath() %>/test/spify/js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="<%=request.getContextPath() %>/test/spify/js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>