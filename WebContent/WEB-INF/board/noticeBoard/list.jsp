<%@page import="damanna.vo.NoticeBoardVO"%>
<%@page import="java.util.List"%>
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
    <title>Damanna_notice</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
 <script type="text/javascript">
 <% 
 	HttpSession sess = request.getSession();
 
 	String adminSession = (String) sess.getAttribute("adminid");
 	String memSession = (String) sess.getAttribute("userid");
 	
 %>
 
$(function(){
	$("#writeBtn").on("click", function(){
	
<%
	if(memSession!=null) {
%>
	alert('관리자만 접근 가능합니다');
<%
	}else if(adminSession!=null) {
%>
		location.href="<%=request.getContextPath()%>/noticeInsert.do";

<%
	}
%>

	});
		
});
</script>
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
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');

h1{
	font-family: 'Nanum Pen Script', cursive;
}
table{
	font-family: 'Nanum Pen Script', cursive;
	font-size: 25px;
}

thead{
 	background-color: #c2185b; 
	color : black;
}

a:link{
	text-decoration: none;
	color: black;
}

a:active {
	color: black;
}

a:hover{
	color: orange;
}

h2{
	color: white;
}
</style>
</head>
<body data-spy="scroll" data-target=".fixed-top">
<%
	List<NoticeBoardVO> noticeList =
		(List<NoticeBoardVO>) request.getAttribute("noticeList");
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
                    <h2>Notice Board</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


    <!-- Basic -->
    <div class="ex-basic-1 pt-5 pb-5">
        <div class="container">
            
        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of basic -->

<h1>게시판 목록</h1>
<br><br>
	<table class="table table-hover table-sttiped text-center a-hover a-link" style = "border : 1">
<!--   <tr height="5"><td width="5"></td></tr> -->
<!--  <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;"> -->
<!--    <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td> -->
<thead>
<tr>
<!--    <td width="5"><width="5" height="30" /></td> -->
   <th width="73">번호</th>
   <th width="379">제목</th>
   <th width="73">작성자</th>
   <th width="164">작성일</th>
   <th width="58">조회수</th>
<!--    <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td> -->
<!--    <td width="7"><width="5" height="30" /></td> -->
  </tr>
  </thead>
<%
 	if(noticeList==null || noticeList.size()==0) {
%>	
	<tr><td colspan="5">등록된 게시글이 없습니다.</td></tr>
<%
 	}else {
 		for(NoticeBoardVO noticeVo : noticeList) {
%>
<!-- <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;"> -->
<!--    <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td> -->
<tbody>
<tr>
<!--    <td width="5"><width="5" height="30" /></td> -->
	<td><%=noticeVo.getNotice_id() %></td>
	<td><a href="<%=request.getContextPath()%>/noticeSelect.do?idx=<%=noticeVo.getNotice_id() %>"><%=noticeVo.getNotice_title() %></td>
	<td><%=noticeVo.getAdmin_id() %></td>
	<td><%=noticeVo.getNotice_date() %></td>
	<td><%=noticeVo.getNotice_count() %></td>
<!-- 	<td width="7"><img src="img/table_right.gif" width="5" height="30" /></td> -->
<!-- 	<td width="7"><width="5" height="30" /></td> -->
</tr>
</tbody>
<% 			
 		}
 	}
%>

<!-- <tr height="25" align="center"> -->
</tr>
<!--   <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr> -->

<!--  <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr> -->
 </table>
<table width="100%" cellpadding="0" cellspacing="0" border="1" >
<!--   <tr><td colspan="4" height="5"></td></tr> -->
  <tr align="center">
   <td><input type=button value="글쓰기" id="writeBtn"></td>
  </tr>
</table>

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