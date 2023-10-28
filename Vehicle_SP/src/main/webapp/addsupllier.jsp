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
	
 <div class="container">
        <form class="supplier-form" action="process_supplier.php" method="POST">
            <h1>Add Supplier</h1>
            <label for="supplierName">Supplier Name</label>
            <input type="text" id="supplierName" name="supplierName" required>

            <label for="contactName">Contact Name</label>
            <input type="text" id="contactName" name="contactName" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" required>
            
            <label for="phone">User Name</label>
            <input type="text" id="username" name="username" required>

			<label for="password">Password</label>
            <input type="text" id="password" name="password" required>
			
            <button type="submit" name ="submit" >Add Supplier</button>
        </form>
    </div>
	<jsp:include page="footer.jsp" />
	


</body>
</html>