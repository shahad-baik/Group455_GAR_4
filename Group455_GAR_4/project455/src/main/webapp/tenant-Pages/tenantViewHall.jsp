<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Halls</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
	<h1 class="pageHeader">Hall information</h1>
	<div class="centerDiv">
	<div class="box-view">
		<div class="form-box">
		<p class="input-box"> Hall Name:</p>
		<p class="input-box"> Hall Price:</p>
		<p class="input-box"> Hall Description:</p>
		<p class="input-box"> Hall Capacity:</p>
		<form  action="" method="post">
		<p class="input-box">Select date</p>
		
        <input class="input-box" type="Date" name="date">
       	<div class="loginLink">
        <button type="submit" class="add-btn" name="update">Reserve</button>
           </div>
      </form>
	
		</div>
	</div>
	</div>
</body>
</html>