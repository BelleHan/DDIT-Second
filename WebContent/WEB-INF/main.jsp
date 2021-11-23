<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>다만나??</title>
<script src="../../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="styleSheet" type="text/css" href="../css/style.css">
<link rel="styleSheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
/* body { */
/* 	margin: 0 auto 0; */
/* } */
</style>
</head>
<body>        
       <!-- 상단 메뉴바  -->
        <div class="container-fluid">
        	<header>
        		<div id="logo">
        		<img alt="tinder" src="../img/tinder.png" class="logoimg">
        		</div>
				<div class="logotext">
        			<a href="Damanna.html">
        				<h1>DaManNa</h1>
        			</a>
	
				</div>
        	<nav>
        		<ul id="topMenu">
        			<li class="navLi"><a href="#rivew">후기</a></li>
        			<li class="navLi"><a href="#city">도시</a></li>
        			<li class="navLi"><a href="#QnA">QnA</a></li>
        			<li class="navLi"><a href="#notice">공지사항</a></li>
        		</ul>
        	</nav>
        	
        	</header>
        
        </div>
       <!-- 본문 --> 
       <div id="contents">
       	<div class="chat">
       		<div class="header">
       			<div class="myprofile"> 
       			<img alt="" src="../img/facetest.jpg">
       			</div>
       			<div class="myprofilename">
       			<a href="mypage.html">이름ㅇㅇ</a>
       			</div>
       		</div>
       			<div class="menu">
      		 		<ul>
       					<li><a href="match.html" target="sideiframe">MATCH</a></li>
       					<li><a href="chat.html" target="sideiframe">CHAT</a></li>
      		 		</ul>
       			 </div>
       		<!--매칭 + 채팅 아이프레임 넣기??  -->
       		<div> 
       		
       		<iframe name="sideiframe" src="match.html" width="500px" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=yes vspace=0></iframe></div>
       	</div>
       
          <div class="swiper-container mySwiper">
       <div class="swiper-wrapper"> 
        	<div class="swiper-slide"> 
        <div class="picture">
       	 	<img src="../../img/아메리카노.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/에스프레소.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/아메리카노.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/에스프레소.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/아메리카노.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/에스프레소.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
        <div class="swiper-slide">
        <div class="picture">
       	 	<img src="../../img/아메리카노.jpg">
       	 	</div>
       	 	<div class="text"> 자기 소개</div>
       	 	</div>
      		 </div> 
	     </div> 
      
       
       </div>
    <script>
      var swiper = new Swiper(".mySwiper", {});
    </script>
    </body>
</html>