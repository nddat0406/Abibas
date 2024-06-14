<%-- 
    Document   : Login
    Created on : Jun 14, 2024, 11:28:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login & Registration</title>
  <!---Custom CSS File--->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginstyle.css">
</head>
<body>
  <div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form action="user?action=login" method="POST">
            <input  type="text" name="username" placeholder="Username" value="${cookies.uname.value}">
            <input  type="password" name="password" placeholder="Password" value="${cookies.pass.value}">
            <input  type="checkbox" name="remember" ${cookies.rem.value!=null?'checked':''} value="true"> Remember me<br><br>
        <a href="#">Forgot password?</a>
        <input type="button" class="button" value="Login">
      </form>
      <div class="signup">
        <span class="signup">Don't have an account?
         <label for="check">Signup</label>
        </span>
      </div>
    </div>
    <div class="registration form">
      <header>Signup</header>
      <form action="user?action=signup" method="post">
        <input type="text" placeholder="Enter your email">
        <input type="password" placeholder="Create a password">
        <input type="password" placeholder="Confirm your password">
        <input type="button" class="button" value="Signup">
      </form>
      <div class="signup">
        <span class="signup">Already have an account?
         <label for="check">Login</label>
        </span>
      </div>
    </div>
  </div>
</body>
</html>

