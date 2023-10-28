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
	
	<h1 class="tt"> WareHouse Manager Dashboard </h1>
	
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
    	<a href="#" onclick="toggleShopSection()"> <div class="button-48" id="manageShopButton" >Manage Item </div></a>
    	<a href="#"><div class="button-48">Backup and restore</div></a>
    	<div class="button-48" id="mangereport">store reports generate </div>
    	<div class="button-48">Manage emplyee</div>
    	<a href="index.jsp"><div class="button-48">Log OUT</div></a>
 
    	</div>
   
    	
    	
<div class="shop" id="shopSection" style="display: none;">
    <div class="login-container">
        <div class="label"><center> Item Manage</center></div><br>
        <a href=additeam.jsp><div class="button-29">Add Item </div></a><br><br>
        <a href="EditIteam.jsp"><div class="button-29">Edit Shop</div></a><br><br>
        
    </div>
</div>

<div class="report" id="reportSection" style="display: none;">
    <div class="login-container">
        <div class="label"><center>Manage Shop</center></div><br>
        <div class="button-29"><a href="addshop.jsp">item report </a></div><br><br>
        <div class="button-29"><a href="ReportGenUsers.jsp">Users report</a></div><br><br>
        <div class="button-29"><a href="EditShop.jsp">seller report</a></div>
    </div>
</div>
  </div>	     
 
 
 
 
 
 
      
<jsp:include page="footer.jsp" />


   

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

</script>


</body>
</html>