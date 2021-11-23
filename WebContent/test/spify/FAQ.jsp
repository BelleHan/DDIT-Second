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
<title>FAQ</title>

<!-- Styles -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&family=Poppins:wght@600&display=swap"
	rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/fontawesome-all.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/magnific-popup.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

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
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/freeList.do"">Free Board</a>

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
                    <h1>FAQ</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


	<!-- Basic -->
	<div class="ex-basic-1 pt-5 pb-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-10 offset-xl-1">
					<h2 class="mt-5 mb-3">Damanna® 프로필에는 어떤 사진을 올려야 하나요?</h2>
					<p class="mb-5">당연히 모두가 궁금해하는 프로필 주인의 사진을 올려야겠죠. 바로 내 사진! 친구들과
						함께 찍은 사진보다는 나 혼자 선명하게 나온 사진이 좋아요. 얼굴을 가리는 선글라스는 잠시 벗어 주시고, 이왕이면
						스마일~ 하고 미소 짓는 표정이 더 좋겠죠?</p>
					<h2 class="mt-5 mb-3">자기소개에는 무엇을 입력해야 하나요?</h2>
					<p class="mb-5">자기소개를 통해 내가 어떤 사람인지 보여줄 수 있어요. 글쓰기에 자신이 없다면 그냥
						내가 좋아하거나 하고 싶은 것들을 나열해도 괜찮아요. 가볍게 내 취미에 대한 얘기를 해도 좋고, 내가 만나고 싶은 매치
						상대에 대한 진지한 생각을 적어도 좋아요. 자기소개에 공개하지 말아야 할 정보에 대해서는 Damanna의 커뮤니티
						가이드라인을 확인해 주세요.</p>
					<h2 class="mt-5 mb-3">매치는 어떻게 이루어지나요?</h2>
					<p class="mb-5">두 사람이 모두 오른쪽으로 스와이프하여 서로에서 LIKE를 보냈을 때만 매치가
						이루어집니다. Damanna®에서 매치를 놓쳤다는 메시지가 뜨면 어떻게 되나요? 매치를 놓쳤다는 메시지는 나에게
						LIKE를 보낸 사람의 프로필을 내가 왼쪽으로 스와이프했다는 뜻이에요.</p>
					<h2 class="mt-5 mb-3">Damanna®는 무료인가요?</h2>
					<p class="mb-5">Damanna®는 기본적으로 프로필을 만들고, 오른쪽으로 스와이프하여 상대방에서 LIKE를 보내거나 왼쪽으로 스와이프하여 프로필을 패스할 수 있는 무료 기능이 제공됩니다.</p>
					<h2 class="mt-5 mb-3">Damanna®의 작동 원리는 무엇인가요?</h2>
					<p class="mb-5">Damanna®는 위치 기반 기술을 활용한 소셜 디스커버리 앱으로, 내가 설정한 상대의 성별, 거리, 성적 지향 조건에 부합하는 프로필들을 보여줍니다.</p>
					<h2 class="mt-5 mb-3">Damanna® 프로필은 진짜인가요?</h2>
					<p class="mb-5">Damanna®는 내가 지금 대화하고 있는 사람이 프로필 사진 속 인물과 동일인임을 알 수 있는 사진 인증 기능을 제공합니다. 본인 인증이 완료된 프로필에는 파란색 배지가 표시됩니다. 이 배지가 달린 프로필이라면 안심할 수 있겠죠? 안전한 Damanna 커뮤니티를 만들기 위해 본인 인증을 꼭 완료해 주세요.</p>
					<h2 class="mt-5 mb-3">컴퓨터로도 Damanna®를 이용할 수 있나요?</h2>
					<p class="mb-5">컴퓨터로 Damanna를 이용하고 싶은 분은 https://Damanna.com에 접속하면 대부분의 앱 기능을 그대로 즐기실 수 있습니다.</p>
					<h2 class="mt-5 mb-3">Damanna®는 어디에서 이용할 수 있나요?</h2>
					<p class="mb-5">Damanna는 190개가 넘는 국가에서 새로운 인연을 만들거나 기존 인맥을 넓히는 것은 물론, 현지 친구를 사귈 수도 있는 글로벌 소셜 디스커버리 앱입니다. 그럼 다음 질문으로 넘어가 볼까요!</p>
					<h2 class="mt-5 mb-3">Damanna에서 만나 결혼하면 결혼식 협찬을 받을 수 있나요?
					</h2>
					<p class="mb-5">예전에는 결혼식 협찬을 하기도 했지만, 이제는 하지 않아요. 하지만 여러분의 결혼을 진심으로 축하하는 마음만은 변함 없답니다. Damannastories@goDamanna.com으로 Damanna로 결혼하게 된 이야기를 보내주시면 Damanna의 굿즈를 보내 드립니다. 좋은 소식이 있다면 저희에게 꼭 알려 주세요!
					</p>
					<h2 class="mt-5 mb-3">Damanna로 연애 상대를 찾을 수 있나요?
					</h2>
					<p class="mb-5">지금까지 550억 건의 매치를 탄생시킨 Damanna에서는 새로운 사람도 쉽고 간편하게 만날 수 있어요. 내 프로필 조회수와 매치 확률을 높일 수 있는 다양한 기능이 제공되고 있으니, 선택은 여러분이 하시면 된답니다!
					</p>
					<h2 class="mt-5 mb-3">Damanna로 결혼을 할 수 있나요?
					</h2>
					<p class="mb-5">결혼 상대를 찾고 있다면 잘 오셨어요. Damanna에서 만나는 인연은 그 가능성이 무궁무진하답니다! Damanna 회원들이 주고 받은 수많은 결혼 서약만 봐도 알 수 있죠.</p>



				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of ex-basic-1 -->
	<!-- end of basic -->


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