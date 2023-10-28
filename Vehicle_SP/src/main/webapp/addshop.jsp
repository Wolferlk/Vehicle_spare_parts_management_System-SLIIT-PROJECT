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

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="allcss.css" />




<link rel = "stylesheet" type = "text/css" href = "Employee.css" />

<meta charset="UTF-8">
<title>SLIIT OOP Employee Management</title>
</head>
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 



	<jsp:include page="navbar.jsp" />
	<div class="container">
        <form class="supplier-form" action="AddShopServlet" method="post">
            <h1>Add Shop</h1>
            
            <img src="data:image/png;base64,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">
            
            <label for="shopName">Shop Name</label>
            <input type="text" id="shopName" name="shopName" required>

            <label for="shopAddress">Shop Address</label>
            <input type="text" id="shopAddress" name="shopAddress" required>

            <label for="shopOwner">Shop Owner</label>
            <input type="text" id="shopOwner" name="shopOwner" required>

            <label for="phone">Phone</label>
            <input type="text" id="phone" name="phone" required>

            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
<br><br>
            
             <input type="submit" name="submit" value="Add Shop" class="btn btn-primary"/>
            
        </form>
    </div>
	<jsp:include page="footer.jsp" />
	
	
	
	<!-- ... (previous HTML code) ... -->



<script>
    // JavaScript to clear form inputs after submission
    document.querySelector(".supplier-form").addEventListener("submit", function () {
        // Reset all input fields in the form
        this.reset();
    });
</script>

<!-- ... (rest of the HTML code) ... -->
	
	


</body>
</html>