<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Single+Day&family=Sunflower:wght@500&display=swap');
</style>
<style>
.img{
/* 	border-radius: 50%; */
	width : 150px;
	height: 150px;
}
 
#id{
	color: white;
}
#id2{
	color: white;
	width: 200px;
	text-align: left;
}

</style>

</head>


<body>
<%
String id = (String)request.getAttribute("id") == null ? "아이디" : (String)request.getAttribute("id");
String pic = (String)request.getAttribute("pic");
%>

<table>
	<tr>
	<td id="id">아이디</td><td id="id2"><%=id %></td>
	<td><a href="#"><img class="img" src="<%=request.getContextPath() %>/<%=pic %>" alt="alternative"></a></td>
	</tr>
</table>


</body>
</html>