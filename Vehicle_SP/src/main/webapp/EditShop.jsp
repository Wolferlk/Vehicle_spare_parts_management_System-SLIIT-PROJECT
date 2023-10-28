<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="body" style="background-image: url('img/554.jpg')"> 

	<jsp:include page="navbar.jsp" />
		
	
<div class="container">
  <div class="supplier-form">  
    
        <div id="shopDetails"  >
            <form action="ShopUpdateServlet" method="post">
            
            <% 
						    String id = request.getParameter("id");
            				String name = request.getParameter("name");
            				String address = request.getParameter("address");
            				String phone = request.getParameter("phone");
            				String email = request.getParameter("email");
            				String owner = request.getParameter("owner");
            				String username = request.getParameter("username");
            				String password = request.getParameter("password");
						%> 
            
                <label for="shopId">Shop ID:</label>
                <input type="text" id="shopId" name="shopId" value="<%= id %>" required>
                
                <label for="shopName">Shop name:</label>
                <input type="text" id="shopName" name="shopName" value="<%= name %>" required>
                
                <label for="shopAddress">Shop Address:</label>
                <input type="text" id="shopAddress" name="shopAddress" value="<%= address %>" required>
                
                <label for="shopOwner">Shop Owner:</label>
                <input type="text" id="shopOwner" name="shopOwner"  value="<%= owner %>" required>
                
                <label for="shopPhone">Phone:</label>
                <input type="text" id="shopPhone" name="shopPhone"  value="<%= phone %>"  required>
                
                <label for="shopEmail">Email:</label>
                <input type="text" id="shopEmail" name="shopEmail" value="<%= email %>" required>
                
                <label for="shopUsername">Username:</label>
                <input type="text" id="shopUsername" name="shopUsername" value="<%= username %>"  required>
                
                <label for="shopPassword">Password:</label>
                <input type="password" id="shopPassword" name="shopPassword" value="<%= password %>" required>
                
                <input type="submit" value="Save">
                
                
                            </form>
        	</div>
        </div>
    </div>
    
<jsp:include page="footer.jsp"/>

</body>
</html>