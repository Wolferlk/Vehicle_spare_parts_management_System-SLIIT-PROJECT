<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />
<link rel="stylesheet" href="navAndFooter.css" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="allcss.css" />




<link rel = "stylesheet" type = "text/css" href = "Employee.css" />

<meta charset="UTF-8">
<title>SLIIT OOP Employee Management</title>
</head>
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 



	<jsp:include page="navbar.jsp" />
	
	<div class = "tt"><center>System Admin Log-In</center></div>
	
	<div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="input-container">
                <label for="username">Username:</label>
                <input type="text" id="username" name="adusername" required>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <input type="password" id="password" name="adpassword" required>
            </div><br><br>
          
            <input type="submit" name="submit" value="login" class="btn btn-primary"/>
            
        </form>
    </div>
    
   
	<jsp:include page="footer.jsp" />
	


</body>
</html>