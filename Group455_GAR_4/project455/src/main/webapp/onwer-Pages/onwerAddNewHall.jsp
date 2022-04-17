<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Hall</title>
 <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<section>
        <nav class="nav-bar">
          <ul>
            <li class="navStyle"><a href="onwerAddNewHall.jsp">Add hall</a></li>
            <li class="navStyle"><a href="onwerViewHall.jsp">View Halls</a></li>
            <li class="navStyle"><a href="onwerProfile.jsp">Profile</a></li>
          </ul>
        </nav>
      </section>  
      <h1 class="pageHeader">Add New Hall</h1>
	<div class="box">
		<form class="form-box" action="" method="post">
			<h2 class="box-header">Please fill hall information</h2>
			<div class="input-box">
				<label>Hall Name</label> <input type="text" name="name"
					placeholder="Enter Hall name">
			</div>
			<div class="input-box">
				<label>Hall Description</label> <input type="text" name="desc"
					placeholder="Enter hall description">
			</div>
			<div class="input-box">
				<label>Hall Price</label> <input type="text" name="price"
					placeholder="Enter hall price">
			</div>
			<div class="input-box">
				<label for="">Contact Number</label> <input type="text"
					name="number" placeholder="Enter the contact number">
			</div>
			<div class="loginLink mrg-15">
				<input type="submit" class="add-btn" name="button" value="Add">
			</div>
		</form>
	</div>
</body>
</html>