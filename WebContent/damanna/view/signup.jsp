<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <script src="https://kit.fontawesome.com/20c5a1496b.js" crossorigin="anonymous"></script>
  <script src="../../js/jquery-3.6.0.min.js"></script>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/damanna/css/singup.css">
  <title>sing up</title>
	
</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html lang "en">
  <head>
    <title>sign up</title>
    <meta charset="UTF-8"/>
    <meta name= "viewport" content= "width=device-width ,initial-scale=1.0"/>
      <script type="text/javascript">
	  $(function(){
		  $("#signupBtn").on("click", function(){
				alert("회원가입 신청이 완료되었습니다!");
			});
		  
		  $("#idCheckbtn").on("click", function(){
			location.href="<%=request.getContextPath()%>/member/memberList.do";
		});
	  	
		$("#idCheckBtn").on("click", function(){
			var memId = $("#mem_id").val();
			if(memId==""){
				alert("회원ID를 입력하세요.");
				$("#id").focus();
				return;
			}
			
			$.ajax({
				url : "<%=request.getContextPath()%>/member/memberIdCheck.do",
				data : { "mem_id" : memId },
				dataType : "json",
				success : function(result){
					if(result=="OK"){
						$("#idcheckResult").html("사용가능");
					}else{
						$("#idcheckResult").html("ID 중복 - 사용불가");
					}
				},
				error : function(xhr){
					alert(xhr.status);
				}
			});
			
			
		});
	  
		//form에서 submit이벤트가 발생했을 때 처리
		$("#register").on("submit",function(){
			// ID중복체크 결과 가져오기
			var idChk = $("#idcheckResult").text();
			if(idChk != "사용가능"){
				alert("ID가 중복되거나 중복체크를 하지 않았습니다.");
				return false; //전송 중단
			}
						
			if($("#mem_pass").val() == ""){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			
			if($("#mem_name").val() == ""){
				alert("회원이름을 입력하세요.");
				return false;
			}
			
			if($("#mem_tel").val() == ""){
				alert("전화번호를 입력하세요.");
				return false;
			}
			
			if($("#mem_addr").val() == ""){
				alert("회원 주소를 입력하세요.");
				return false;
			}
			
			return true; //전송 진행
			location.href="<%=request.getContextPath()%>html/login.jsp";
		});

		var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식

// 		if(!emailRule.test($("input[id='mem_mail']").val())) {            
//             //경고
//             return false;

  })
  
  </script>
    </head>
  <body>
    


      <a href="<%=request.getContextPath() %>/damanna/html/login.jsp"><h1 id="title"><i class="fas fa-heartbeat"></i>Damanna</h1></a>
<h2 id="description"> Sign Up </h2>
    
<div class="container">
  
<fieldset class= "card">
  


<form id= "survay-form" action="<%=request.getContextPath()%>/member/memberInsert.do" >
 
  <div>
  <label for="name">I D</label>
  <input id="mem_id" type="text" name="mem_id" placeholder="ID를 입력해주세요" required/>
  		<input type="button" value="중복확인" id="idCheckBtn"><br>
  		<span id="idcheckResult"></span>
  </div>
  
  <div id="email-field">
  <label>비밀번호</label>
  <input type="password" id="mem_pass" name="mem_pass" placeholder="PW를 입력해주세요"/>
  </div>
<!--   <div id="email-field"> -->
<!--   <label>비밀번호 확인</label> -->
<!--   <input type="password" id="mem_pass2" name="mem_pass2" placeholder="PW를 입력해주세요"/> -->
<!--   </div> -->

  <div>
  <label for="mem_name">이 름 </label>
  <input id="mem_name" type="text" name="mem_name" placeholder="이름을 입력해주세요" required/>
  </div>
  
  <div>
  <label for="bir">생년월일 </label>
  <input id="mem_bir" type="date" name="mem_bir">
  </div>
  
 <div>
    <label>성 별</label>
     <label>
	  	 <select class="mem_gen" name="mem_gen" id="mem_gen">
	  	 <option value="남">남</option>
	  	 <option value="여">여</option>
	  	 </select>
     </label>
   </div>
   
   <div>
    <label for="mem_hp">휴대폰</label>
    <input type="text" name="mem_hp" id="mem_hp" placeholder="010-0000-0000" > 
  </div>
  
   <div>
    <label for="mem_mail">이메일</label>
    <input type="text" name="mem_mail" id="mem_mail" > 
  </div>
  
<!--    <div> -->
<!--     <label for="addr">거주도시</label> -->
<!-- 	  	 <select class="addr" name="mem_city" id="mem_city"> -->
<!--         	 			<option value="2">서울특별시</option> -->
<!-- 						<option value="31">경기도</option> -->
<!-- 						<option value="32">인천광역시</option> -->
<!-- 						<option value="33">강원도</option> -->
<!-- 						<option value="41">충청남도</option> -->
<!-- 						<option value="42">대전광역시</option> -->
<!-- 						<option value="43">충청북도</option> -->
<!-- 						<option value="44">세종특별자치시</option> -->
<!-- 						<option value="51">부산광역시</option> -->
<!-- 						<option value="52">울산광역시</option> -->
<!-- 						<option value="53">대구광역시</option> -->
<!-- 						<option value="54">경상북도</option> -->
<!-- 						<option value="55">경상남도</option> -->
<!-- 						<option value="61">전라남도</option> -->
<!-- 						<option value="62">광주광역시</option> -->
<!-- 						<option value="63">전라북도</option> -->
<!-- 						<option value="64">제주특별자치도</option> -->
        	 	
<!--         	 </select> -->
<!--   </div> -->
   <div>
    <label for="memImg">프로필 사진</label>
             <input type="file" class="memImg">
        	 <input type="file" class="memImg">
  </div>

  <div>
  <label for="mem_insta">인스타 </label>
  <input id="mem_insta" type="text" name="mem_insta" >
  </div>
  
 <div>
    <label>매치 타입</label>
     <label>
	  	 <select class="matchType" name="matchType" id="matchType">
	  	 <option value="man">MAN</option>
	  	 <option value="woman">WOMAN</option>
	  	 <option value="both">BOTH</option>
	  	 </select>
     </label>
  
   <div>
     <label> 취미</label>
     
     <label>
	  	 <select class="hobby" name="hobby" id="hobby">
	  	 <option value="health">운동</option>
	  	 <option value="movie">영화</option>
	  	 <option value="study">공부</option>
	  	 <option value="game">게임</option>
	  	 <option value="pet">동물</option>
	  	 </select>
       </label>
 </div>

  <div id="register">
  <input type="submit" value="회원 가입" id="signupBtn"/>
  <input type="reset" value="초기화"/>
  </div> 
  </form>
  
    </fieldset>

   
    
    
<!-- partial -->

</body>
</html>
