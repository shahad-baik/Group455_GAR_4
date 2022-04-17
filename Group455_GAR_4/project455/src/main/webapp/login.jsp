<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
    if (request.getParameter("submit") != null) {
String email= request.getParameter("email");
String pass= request.getParameter("password");



if( email.length() !=0 &&pass.length()!=0){
	project455.DB_project455 con = new project455.DB_project455();
	ResultSet result = con.checkLogin(email, pass);
	
	  if (result.next()) { 
		  String role = result.getString("role");
		  session.setAttribute("email", email);
		  session.setAttribute("role", role);
		  session.setMaxInactiveInterval(5);
		  role= String.valueOf(session.getAttribute("role"));
		  out.print(role+"******************");
		  if(role.equals("0")){
			 response.sendRedirect("tenant-Pages/tenantHomePage.jsp");
		  }else if (role.equals("1")){
			response.sendRedirect("onwer-Pages/onwerHomePage.jsp");
		  }else{
			  response.sendRedirect("login.jsp");
		  }  
	    } else{
	    	 response.sendRedirect("login.jsp");
	    }
	
 }
else{
 response.sendRedirect("login.jsp");
}
    }
 %>
    
    
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
      <form class="form-box" method="post">
        <div class="input-box">
          <label for="">Email</label>
          <input type="text" name="email" placeholder="example@domain.com"  >
        </div>

        <div class="input-box">
          <label for="">Password</label>
          <input type="password" name="password" placeholder="XXXXXXXX" >
        </div>

        <div class="loginLink mrg-15">
          <input type="submit" class="add-btn" name="submit" value="Login">
        </div>
        <div class="loginLink">
          <span>Don't Have an account? <a href="SignUp.jsp"> SignUp</a></span>
        </div>
      </form>
    </div>
  </body>
</html>
