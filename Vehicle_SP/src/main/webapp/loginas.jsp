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
<body class="body" style="background-image: url('img/mechanics.jpg')" > 

	<jsp:include page="navbar.jsp" />
	
	<div class ="container">
	<center>
	<h1 colour ="white">Log As         </h1><br>
	
	
	
	<a href="ShopLog.jsp"><div class="button-29">Shop</div></a><br><br>
	<a href="suplierLog.jsp"><div class="button-29">Supplier</div></a><br><br>
	<a href="WarehouseMnglog.jsp"><div class="button-29">Warehouse mannager</div></a><br><br>
	<a href="WarehouseEmplog.jsp"><div class="button-29">warehouse Employee</div></a><br><br>
	<a href="sysadlog.jsp"><div class="button-29">System admin </div></a><br><br><br><br>
	
	<div class="container1"><div class="btn"><a href="index.jsp">Home</a></div>
</center>



		

	</div>
	<jsp:include page="footer.jsp" />
	


</body>
</html>