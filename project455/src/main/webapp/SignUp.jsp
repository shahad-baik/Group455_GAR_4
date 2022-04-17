<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
 <%
 if (request.getParameter("submit") != null) {
	    // ...
	
String name= request.getParameter("name");
String email= request.getParameter("email");
String phone= request.getParameter("phone");
String password= request.getParameter("password");
String role= request.getParameter("role");


if(name != null && email.length()!=0 && phone.length() !=0 &&password.length()!=0 && role.length()!=0){
	project455.DB_project455 con = new project455.DB_project455();
	
	 boolean isAdded = con.addUser(name, email ,phone ,role ,password);
	 if(isAdded)
		 response.sendRedirect("login.jsp");
	 else
	 out.print("Error");
 }
else{
	out.print("Error22222");
}
 }
 %>
    
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
          <label for="">Phone</label>
          <input  type="text" name="phone" placeholder="Enter your phone number">
        </div>
        
        <div class="input-box">
          <label for="">Password</label>
          <input type="password" name="password" id="password" placeholder="Enter 8 digit number">
          <p id ="checkPassword">  </p>
        </div>


        <div class="input-box">
          <label for="">Confirm password</label>
          <input  type="password" name="cPassword" id="cPassword" placeholder="Enter 8 digit number">
          <p id ="checkCPassword">  </p>
        </div>
        
           <div class="input-box">
          <label for="">Role</label>
          <select name="role">
              <option value="0">Tenant</option>
              <option value="1">Owner</option>
            </select>
          </div>
        
        <div class="loginLink mrg-15">
          <input type="submit" class="add-btn" name="submit" value="Sign Up">
        </div>
        <div class="loginLink">
          <span>Have an account? <a href="login.jsp">Login Now</a></span>
          </div>
      </form>
    </div>
  </body>
</html>
