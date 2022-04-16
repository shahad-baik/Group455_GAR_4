<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
 <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<section>
		<nav class="nav-bar">
			<ul>
				<li class="navStyle"><a href="tenantHomePage.jsp">View Halls</a></li>
				<li class="navStyle"><a href="">Reservations</a></li>
				<li class="navStyle"><a href="tenantProfile.jsp">Profile</a></li>
			</ul>
		</nav>
	</section>
            <h1 class="pageHeader">Profile</h1>
      
<div class="box">
         <form class="form-box" action="#" method="post">
           <h2 class="Account-info">Account Information:</h2>

           <div class="input-box">
             <label for="">Name</label>
             <input type="text"  name="name" value="<?php echo $name; ?>" placeholder="Edit your name">
           </div>

           <div class="input-box">
             <label for="">Email</label>
             <input type="text"  name="email" value="<?php echo $email;?>" placeholder="from database" disabled>
           </div>

           <div class="input-box">
             <label for="">Password</label>
             <input type="password" name="password" value="<?php echo $password;?>" placeholder="Edit your password">
           </div>

           <div class="input-box">
             <label for="">Confirm Password</label>
             <input type="password" name="cpassword" value="<?php echo $cpassword;?>" placeholder="confirm your password">
           </div>

           <div class="loginLink">
               <button type="submit" class="add-btn" name="update">update</button>
           </div>
         </form>
       </div>
</body>
</html>
