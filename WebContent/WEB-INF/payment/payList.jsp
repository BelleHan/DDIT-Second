<%@page import="damanna.vo.PaymentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 내역</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
	List<PaymentVO> payList = (List<PaymentVO>)request.getAttribute("paymentList");
%>

<table border="1">
<tr>
	<th>회원ID</th><th>멤버쉽시작일</th><th>멤버쉽종료일</th>
</tr>
<%
for(PaymentVO payVo : payList){
%>
<tr>
	<td><%=payVo.getMember_id() %></td>
	<td><%=payVo.getPayment_date() %></td>
	<td><%=payVo.getMembership_end() %></td>
</tr>
<%
}
%>
</table>
</body>
</html>