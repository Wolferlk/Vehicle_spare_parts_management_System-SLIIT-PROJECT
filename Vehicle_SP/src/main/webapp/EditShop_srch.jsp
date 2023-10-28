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
<body class="body" style="background-image: url('img/edit.jpg')" > 

	<jsp:include page="navbar.jsp" />
	 
	
	  <!-- Search Form 
<div class="container">
    <div class="supplier-form">
        <h1>Edit Shop Details</h1>
      
        <form action="search" method="POST">
            <label for="searchTerm">Search by Shop Name:</label>
            <input type="text" id="searchTerm" name="shop_name" placeholder="Enter Shop Name" required>
            <input type="submit" class="btn btn-primary" value=searc  h>
           
        </form>

</div>
</div>-->

<div class="container">
    
    <div class="row">
        <div class="col-lg-13">
            <div class="">
                <div class="table-responsive">
                    <table class="table project-list-table table-nowrap align-middle table-borderless">
                        <thead>
                            <tr>
                                
                                <th scope="col">Shop name</th>
                                <th scope="col">Shop address</th>
                                <th scope="col">shop owner</th>
                                <th scope="col">phone</th>
                                <th scope="col">Email</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        
                        <c:forEach var="shop" items="${shopList}">
                            <tr>
                            	
                                <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="avatar-sm rounded-circle me-2" />${shop.shopName}</td>
                                <td><span class="badge badge-soft-success mb-0">${shop.shopAddress}</span></td>
                                <td>${shop.shopOwner}</td>
                                <td>${shop.phone}</td>
                                <td>${shop.getEmail()}</td>
                                
		                        <td>
								   <a href="http://localhost:8080/Vehicle_SP/EditShop.jsp?id=${shop.shopId}&name=${shop.shopName}&address=${shop.shopOwner}&phone=${shop.phone}&email=${shop.getEmail()}&owner=${shop.shopOwner}&username=${shop.username}&password=${shop.password}">
								   	<button type="button" class="btn btn-primary">Update</button>
								   </a>
							   </td>
							   
							    <td>
								   <form action="DeleteShopServelet" method="post">
								   		<input type="hidden" name="shopId" value="${shop.shopId}">
								   		<input type="submit" value="Delete" class="btn btn-primary">
								   </form>								   	
								   
							   </td>
                                	
                               
                                
                            </tr>
                          </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
   
</div>




</div>

<!-- ---------------------------------------------------------------------- -->





<!-- ------------------------------------------------------------------------- -->
	<jsp:include page="footer.jsp" />
	
</body>
</html>