<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Sign up</title>

      <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>

    <h1 class="pageHeader">Sign up</h1>
    <div class="box">
      <form class="form-box" action="" method="post">
        <h2 class="box-header">Please fill your information</h2>
        <div class="input-box">
          <label for="">Name</label>
          <input  type="text" name="name" placeholder="Enter your name">
        </div>
        <div class="input-box">
          <label for="">Email</label>
          <input type="text" name="email" id="email" placeholder="Enter your email">
          <p id ="checkEmail">  </p>
        </div>
        <div class="input-box">
          <label for="">Password</label>
          <input type="password" name="Password" id="password" placeholder="Enter 8 digit number">
          <p id ="checkPassword">  </p>
        </div>


        <div class="input-box">
          <label for="">Confirm password</label>
          <input  type="password" name="cPassword" id="cPassword" placeholder="Enter 8 digit number">
          <p id ="checkCPassword">  </p>
        </div>
        <div class="loginLink mrg-15">
          <input type="submit" class="add-btn" name="button" value="Sign Up">
        </div>
        <div class="loginLink">
          <span>Have an account? <a href="login.jsp">Login Now</a></span>
          </div>
      </form>
    </div>
  </body>
</html>
