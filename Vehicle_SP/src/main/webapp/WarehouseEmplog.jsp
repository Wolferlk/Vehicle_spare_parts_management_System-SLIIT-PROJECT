<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


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
	
	<div class = "tt"><center>Warehouse employee Log-In</center></div>
	
	<div class="login-container">
        <h2>Login</h2>
        <form action="loginServlet" method="post">
            <div class="input-container">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div><br><br>
            <button6 type="submit">Login</button6>
            
            
            <br><br><div class="button-29"><a href="ShopLog.jsp">temp</a></div><br><br>
        </form>
    </div>
    
    
    
	<jsp:include page="footer.jsp" />
	


</body>
</html>