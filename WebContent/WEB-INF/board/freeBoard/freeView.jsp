<%@page import="damanna.vo.FreeBoardVO"%>
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
    <title>게시글</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#writeBtn").on("click", function(){
		location.href="<%=request.getContextPath()%>/freeInsert.do";
	});
	
});
$(function(){
	$("#listBtn").on("click", function(){
		location.href="<%=request.getContextPath()%>/freeList.do";
	});
	
});
$(function(){
	$("#deleteBtn").on("click", function(){
		alert("정상적으로 삭제되었습니다!");
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

#ttb{
	text-align: center;
}

#con{
	font-size: 40px;
}

/* #ttb1{ */
/* 	margin-left: 37%; */
/* } */

#tttd{
	border: none;
}
</style>
</head>
<body>
<%

	FreeBoardVO freeVo = (FreeBoardVO)request.getAttribute("freeVo");

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
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/test/spify/FAQ.jsp">FAQ</a>
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
                            <a class="dropdown-item page-scroll" href="terms.html">로그아웃</a>           
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
                    <h1>게시글</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->

<br><br><br>
    <table width="100%" cellpadding="0" cellspacing="0" border="0" id="ttb">
     <tr>
      <td id="con">내 용</td>
     </tr>
    </table>
    <br>
   <table class="table table-hover table-sttiped text-center a-hover a-link" style = "border : 1" id="ttb1">
     <tr>
      <td width="100" id="tttd">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319"><%=freeVo.getFree_id() %></td>
     </tr>
     
    <tr>
      <td width="100" id="tttd">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319"><%=freeVo.getFree_count() %></td>
     </tr>
     
    <tr>
       <td width="100" id="tttd">&nbsp;</td>
      <td align="center" width="76">작성자</td>
      <td width="319"><%=freeVo.getMember_id() %></td>
     </tr>
     
    <tr>
      <td width="100" id="tttd">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"><%=freeVo.getFree_date() %></td>
     </tr>
     
    <tr>
      <td width="100" id="tttd">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"><%=freeVo.getFree_title() %></td>
     </tr>
     
     <tr>
      <td width="100" id="tttd">&nbsp;</td>
      <td width="0">&nbsp;</td>
       <td width="399" colspan="2" height="200"><%=freeVo.getFree_content() %>
   <td width="50" id="tttd">&nbsp;</td>
    </tr>
    
     <tr align="center">
      <td width="50" id="tttd">&nbsp;</td>
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399"><input type=button value="글쓰기" id="writeBtn">
	<input type=button value="댓글">
	<input type=button value="목록" id="listBtn">
	<a href="<%=request.getContextPath()%>/freeUpdate.do?idx=<%=freeVo.getFree_id() %>"><input type=button value="수정"></a>
	<a href="<%=request.getContextPath()%>/freeDelete.do?idx=<%=freeVo.getFree_id() %>"><input type=button value="삭제" id="deleteBtn"></a>
      <td width="150" id="tttd">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</body>
</html>