<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Log in</title>
 <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

    <h1 class="pageHeader">Log In</h1>
    <div class="box">
      <form class="form-box" action="onwer-Pages/onwerHomePage.jsp" method="post">
        <div class="input-box">
          <label for="">Email</label>
          <input type="text" name="email" placeholder="example@domain.com"  >
        </div>

        <div class="input-box">
          <label for="">Password</label>
          <input type="password" name="Password" placeholder="XXXXXXXX" >
        </div>

        <div class="loginLink mrg-15">
          <input type="submit" class="add-btn" name="button" value="Login">
        </div>
        <div class="loginLink">
          <span>Don't Have an account? <a href="SignUp.jsp"> SignUp</a></span>
        </div>
      </form>
    </div>
  </body>
</html>
