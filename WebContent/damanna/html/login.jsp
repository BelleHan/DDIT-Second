 <%@ page language="java" contentType="text/html; charset=UTF-8" 
     pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8"> 
  <title>Log in </title>
<!--   <link rel="stylesheet" href="../css/login.css"> -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/damanna/css/login.css">
<!--   <script defer src="../js/login.js"></script> -->
  <script defer src="<%=request.getContextPath() %>/damanna/js/login.js"></script>
  <script src="https://kit.fontawesome.com/20c5a1496b.js" crossorigin="anonymous"></script>
  <script src="../js/jquery-3.6.0.min.js"></script>
  <script>
  	$(function(){
  			/*회원 로그인  */

  			$("#btnLog").on("click" , function(){
  				
  				userid = $('#userid').val();
  				pass = $('#pass').val()
  				
  				console.log(userid, pass);
  				
  				
  				$.ajax({
  					url : "/IntermediateProject/memberLogin.do",
  					data : {"userid" : userid,
  							"pass" : pass
  							} ,
  					dataType : "json",
  					success : function(res){
  						if(res.sw == 'no'){
  							alert('로그인 실패!!');
  							return false;
  						}
  						
  						alert(userid + "님 로그인 성공");
  						location.href="/IntermediateProject/memberPicture.do";
  							
  					},
  					error : function(xhr){
  						alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.")
  					}
  						
  					
  				});
  				
  			});

  			/* 관리자 로그인 */
  			$("#btnAdmin").on("click" , function(){
  				
  				
  				adminid = $('#adminid').val();
  				adminpass = $('#adminpass').val()
  				
  				console.log(adminid, adminpass);
  				
  				
  				$.ajax({
  					url : "/IntermediateProject/AdminLogin.do",
  					data : {"adminid" : adminid,
  							"adminpass" : adminpass
  							} ,
  					dataType : "json",
  					success : function(res){
  						if(res.sw == 'no'){
  							alert('로그인 실패!!');
  							return false;
  						}
  						
  						alert("로그인 성공");
  						location.href="/IntermediateProject/member/memberList.do";
  							
  					},
  					error : function(xhr){
  						alert(xhr.status)
  					}
  						
  					
  				});
  				
  			});

  	});
  </script>

</head>
<body>
<!-- partial:index.partial.html -->

<!-- 안뇽 -->
<div class="wrapper">
  
    <div class="container">
      <a href="#"><h1 id="title"><i class="fas fa-heartbeat"></i>Damanna</h1></a>
      <div class="signup">Admin</div>
      <div class="login">Log In</div>
      
       <div class="signup-form" >
       		<form action="<%=request.getContextPath()%>/AdminLogin.do">
          <input type="text" id = "adminid"placeholder="Admin ID" class="input"><br />
          <input type="password" id = "adminpass" placeholder="Admin Password" class="input"><br />
          <div  id="btnAdmin">Admin Login</div>
          </form>
       </div>
      
      <div class="login-form">
      	<form method="post" action="<%=request.getContextPath()%>/memberLogin.do">
      	
          <input type="text"  id = "userid" name="userid"  placeholder="ID" class="input"><br />
          <input type="password" id="pass"  name="pass" placeholder="Password" class="input"><br />
          <div  id="btnLog">Login</div>
<!--           <input type="submit" id="submit" value="Login"> -->
<!--           <span><a href="#">I forgot my password.</a></span> -->
         </form> 
       </div>
       <div class="survey">
        <a href="../view/signup.jsp">sign up <i class="fas fa-arrow-right"></i></a>
      </div>
    </div>
  </div>



<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
 

</body>
</html>