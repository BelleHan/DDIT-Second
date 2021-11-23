<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- SEO Meta Tags -->
<meta name="description" content="Your description">
<meta name="author" content="Your name">

<!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
<meta property="og:site_name" content="" />
<!-- website name -->
<meta property="og:site" content="" />
<!-- website link -->
<meta property="og:title" content="" />
<!-- title shown in the actual shared post -->
<meta property="og:description" content="" />
<!-- description shown in the actual shared post -->
<meta property="og:image" content="" />
<!-- image link, make sure it's jpg -->
<meta property="og:url" content="" />
<!-- where do you want your post to link to -->
<meta name="twitter:card" content="summary_large_image">
<!-- to have large image post format in Twitter -->

<!-- Webpage Title -->
<title>Review</title>

<!-- Styles -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&family=Poppins:wght@600&display=swap"
	rel="stylesheet">
       <link href="<%=request.getContextPath() %>/test/spify/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/fontawesome-all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/swiper.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/magnific-popup.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/styles.css" rel="stylesheet">

<!-- Favicon  -->
<link rel="icon" href="images/favicon.png">
</head>
<body data-spy="scroll" data-target=".fixed-top">

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
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/noticeList.do">Notice</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/test/spify/FAQ.jsp">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/freeList.do">Free Board</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/test/spify/review.jsp">Review</a>
                    </li>
               <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My Page</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item page-scroll" href="<%=request.getContextPath()%>/test/spify/mypage.jsp">My Page</a>
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
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Review</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


	<!-- Projects -->
    <div id="projects" class="slider-1">
    <br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">      
                    
						<!-- Text Slider -->
                    <div class="slider-container">
                        <div class="swiper-container text-slider">
                            <div class="swiper-wrapper">
                                
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>유진 & 민준</h4>
                                                <p class="testimonial-text">"제주도에 혼자 여행을 갔다가 다만나에서 1km 이내에 있던 분과 매치됐어요. 취향이 비슷해 매치되자마자 여행 정보를 주고받다 바로 만났죠. 그렇게 여행 친구가 되어 같이 유명한 관광지를 다니면서 즐거운 시간을 보내고 헤어졌어요. 그 후 서울에서 다시 만났고, 티키타카가 너무 잘 돼서 소울메이트를 찾은 느낌이에요"</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>Sean & Marianna Polcha</h4>
                                                <p class="testimonial-text">"다만나에서 맘에 드는 사람을 만날 수 있단 생각은 솔직히 없었는데, 어느 날 문득 이렇게 아름다운 사람이 앱에 뜨지 뭐에요. 당장 슈퍼 라이크 기능을 결제해서 슈퍼 라이크를 보냈죠!"</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
                               
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>Lauren Delarmente</h4>
                                                <p class="testimonial-text">"모든 솔로분들, 특히 저희처럼 성격이 내성적인 분들께 말씀드리고 싶어요. 본인이 만들어 놓은 자신만의 경계를 용감하게 벗어나라구요. 바로 그 지점에서 진정한 인연을 만날 수 있거든요. 저희가 이렇게 만난 건 모두 다만나 덕분이에요. 늘 감사하게 생각해요. ❤"</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
                               
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>현우 & 수빈</h4>
                                                <p class="testimonial-text">"다만나에서는 완전히 분야가 다른 사람들과도 스스럼없이 대화할 수 있어 좋아요. 저는 IT 개발자인데 지금 연락하는 여사친은 영화 감독을 꿈꾸면서 영상 관련 일을 하는 친구에요. 이 친구와 매치된 후부터 서로의 일상, 음악 취향, 고민 등을 편하게 털어놓는 사이가 됐죠."</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
                               
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>Magdalena & Annie</h4>
                                                <p class="testimonial-text">"저는 전 연애가 끝난 지 얼마 안 됐을 때였고 Annie는 여자를 만나게 된 지 얼마 안 됐을 때여서 처음엔 둘 다 한동안 조심스러웠던 기억이 나요. 그러다 어느 순간 서로에게 아주 단단히 빠지게 됐는데, 생각보다 일찍 짝을 찾았구나 싶었죠."</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>서연 & 지혜</h4>
                                                <p class="testimonial-text">"저는 원래 학교에서 아싸였어요. 그런데 다만나에서 우연히 저희 학과 인싸 선배를 만나 학교 생활이 180도 달라졌어요! 시각디자인과인데 마침 이 선배가 작업을 잘하기로 유명한 분이라 학과 친구 겸 멘토로 지내면서 제 작업에도 영감과 도움을 많이 받고 있어요."</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="text-container">
                                                <h4>Rebecca Stephenson</h4>
                                                <p class="testimonial-text">"다음 소개팅남과는 굳이 결혼은 아니더라도 내 남은 인생을 함께할 거라는 생각이 강했어요. 저는 좀 까다로운 성격이라 다만나에서 남자를 만날 수 있다는 기대는 없었거든요? 그래도 어쨌든 다만나에 가입하고 매치가 이루어지면 어떻게 되는지 한번 보기로 했던 거죠."</p>     
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->



                            </div> <!-- end of swiper-wrapper -->
                            
                          

                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of text slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
        <br><br><br><br><br><br><br>
    </div> <!-- end of slider-1 -->
    <!-- end of projects -->


	<!-- Footer -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer-col first">
						<h6>About Spify</h6>
						<p class="p-small">Spify is a business website Bootstrap HTML
							template designed to present startups in a beautiful manner with
							features for description</p>
					</div>
					<!-- end of footer-col -->
					<div class="footer-col second">
						<h6>Links</h6>
						<ul class="list-unstyled li-space-lg p-small">
							<li>Important: <a href="terms.html">Terms & Conditions</a>,
								<a href="privacy.html">Privacy Policy</a></li>
							<li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon
									Library</a>, <a href="#">Illustrations</a></li>
							<li>Menu: <a class="page-scroll" href="#header">Home</a>, <a
								class="page-scroll" href="#details">Details</a>, <a
								class="page-scroll" href="#strengths">Strengths</a>, <a
								class="page-scroll" href="#contact">Contact</a></li>
						</ul>
					</div>
					<!-- end of footer-col -->
					<div class="footer-col third">
						<span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-facebook-f fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-twitter fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-pinterest-p fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-instagram fa-stack-1x"></i>
						</a>
						</span>
						<p class="p-small">
							We would love to hear from you <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a>
						</p>
					</div>
					<!-- end of footer-col -->
				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of footer -->
	<!-- end of footer -->


	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="p-small">
						Copyright © <a href="#your-link">Your name</a>
					</p>
				</div>
				<!-- end of col -->
			</div>
			<!-- enf of row -->
		</div>
		<!-- end of container -->


		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="p-small">
						Distributed by <a href="https://themewagon.com/">Themewagon</a>
					</p>
				</div>
				<!-- end of col -->
			</div>
			<!-- enf of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of copyright -->
	<!-- end of copyright -->


	<!-- Scripts -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery for Bootstrap's JavaScript plugins -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap framework -->
	<script src="js/jquery.easing.min.js"></script>
	<!-- jQuery Easing for smooth scrolling between anchors -->
	<script src="js/swiper.min.js"></script>
	<!-- Swiper for image and text sliders -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- Magnific Popup for lightboxes -->
	<script src="js/scripts.js"></script>
	<!-- Custom scripts -->
</body>
</html>