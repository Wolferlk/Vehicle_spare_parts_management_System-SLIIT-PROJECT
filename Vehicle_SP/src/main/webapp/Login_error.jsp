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
	
		
	
	
	<center>
	
        <h1 class="tt">Try Again ...</h1>
        <br>

<img src="data:image/png;base64,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">
 <br>
      <div class="addshop-container">
      <br>
        <a href="loginas.jsp" class="button-29">Try Again</a>
        <a href="index.jsp" class="button-29">Home</a>

	</center>
    
	
	
	
	
	
	
	
	
	<jsp:include page="footer.jsp" />

</body>
</html>