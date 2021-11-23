<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Log in </title>
  <link rel="stylesheet" href="../css/login.css">
  <script defer src="../login/login.js"></script>
  <script src="https://kit.fontawesome.com/20c5a1496b.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- partial:index.partial.html -->


<div class="wrapper">
  
    <div class="container">
      <a href="#"><h1 id="title"><i class="fas fa-heartbeat"></i>Damanna</h1></a>
<!--       <div class="signup">Sign Up</div> -->
      <div class="login">Log In</div>
      
<!--        <div class="signup-form"> -->
<!--           <input type="text" placeholder="Your Email Address" class="input"><br /> -->
<!--           <input type="text" placeholder="Choose a Username" class="input"><br /> -->
<!--           <input type="password" placeholder="Choose a Password" class="input"><br /> -->
<!--           <div class="btn">Create account</div> -->
<!--        </div> -->
      
      <div class="login-form">
      <form method="post" action="<%=request.getContextPath()%>/memberLogin.do">
      
          <input type="text" name="userid" placeholder="ID" class="input"><br />
          <input type="password" name="pass" placeholder="Password" class="input"><br />
			<input type="submit" value="Login">
         
 </form>
          <div class="btn">log in</div>
          <span><a href="#">I forgot my password.</a></span>
          
       </div>
       <div class="survey">
<!--         <a href="signUp.html">sign up <i class="fas fa-arrow-right"></i></a> -->
      </div>
    </div>
  </div>


<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
 

</body>
</html>