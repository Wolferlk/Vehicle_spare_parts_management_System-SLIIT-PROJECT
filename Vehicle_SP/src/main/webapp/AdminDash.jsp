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
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 



	<jsp:include page="navbar.jsp" />
	
	<h1 class="tt"> Proparts Admin Dashboard </h1>
	
<c:forEach var="adm" items="${addetails}">
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
        <p class="p2">Welcome, ${adm.name} </p>

	</c:forEach>

		
	
    <div class ="dashb">
    	<div class ="functions">
    	<a href="#" onclick="toggleShopSection()"><div class="button-48" id="manageShopButton" >Manage Shop</div></a>
    	<a href="#"><div class="button-48">Backup and restore</div></a>
    	<a ><div class="button-48" id="mangereport">generate reports</div></a>
    	<a href="#"><div class="button-48" id="mange_acc">Manege Account</div></a>
    	<a href="#"><div class="button-48">Log OUT</div></a>
 
    	</div>
   
    	
    	
<div class="shop" id="shopSection" style="display: none;">
    <div class="login-container">
        <div class="label"><center>Manage Shop</center></div><br>
        <center><img src="data:image/png;base64,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" >
        </center><br>
        <a href="addshop.jsp"><div class="button-29">Add Shop </div></a><br><br>
        <a href="http://localhost:8080/Vehicle_SP/GetShopsServlet"><div class="button-29">Edit Shop</div></a><br><br>
       
    </div>
</div>

<div class="report" id="reportSection" style="display: none;">
    <div class="login-container">
        <div class="label"><center>Generate Reports</center></div><br>
       <center> <img src="data:image/png;base64,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">
       </center><br>
       
       
        
        <center>
       
        <a href="http://localhost:8080/Vehicle_SP/PDFDownload" ><input type="submit" name="submit" value="item report" class="btn btn-primary"/></a><br></center>
        

		
		

        
        
    
    </div>
</div>




<div class="shop" id="acc_Section" style="display: none;">
      <div class="login-container">
        <div class="label"><center>Edit My Account </center></div><br>
        <center><img src="data:image/png;base64,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">
        </center><br>
        <div class="button-29"><a href="Edit_Admin.jsp">Update My Account </a></div><br><br>
        <div class="button-29"><a href="EditShop_srch.jsp">Delete My Account</a></div><br><br>
        <div class="button-29"><a href="additeam.jsp">Add Item</a></div><br><br>
       
    </div>
</div>


  </div>	     
 
 
 
 
 
 
      
<jsp:include page="footer.jsp" />


</body>

<script>

// Get references to the button and shop section
var manageShopButton = document.getElementById('manageShopButton');
var shopSection = document.getElementById('shopSection');

// Initialize shop section as hidden
shopSection.style.display = 'none';

// Add a click event listener to the "Manage Shop" button
manageShopButton.addEventListener('click', function() {
    // Toggle the visibility of the shop section
    if (shopSection.style.display === 'none') {
        shopSection.style.display = 'block';
    } else {
        shopSection.style.display = 'none';
    }  
});


var mangereport = document.getElementById('mangereport');
var reportSection = document.getElementById('reportSection');

// Initialize shop section as hidden
reportSection.style.display = 'none';

// Add a click event listener to the "Manage Shop" button
mangereport.addEventListener('click', function() {
    // Toggle the visibility of the shop section
    if (reportSection.style.display === 'none') {
    	reportSection.style.display = 'block';
    } else {
    	reportSection.style.display = 'none';
    }  
});



var mange_acc = document.getElementById('mange_acc');
var acc_Section = document.getElementById('acc_Section');

// Initialize shop section as hidden
acc_Section.style.display = 'none';

// Add a click event listener to the "Manage Shop" button
mange_acc.addEventListener('click', function() {
    // Toggle the visibility of the shop section
    if (acc_Section.style.display === 'none') {
    	acc_Section.style.display = 'block';
    } else {
    	acc_Section.style.display = 'none';
    }  
});


</script>



</html>