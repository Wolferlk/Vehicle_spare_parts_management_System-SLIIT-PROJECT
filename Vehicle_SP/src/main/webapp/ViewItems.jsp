<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="allcss3.css" />
<link rel="stylesheet" href="allcss2.css" />




<link rel = "stylesheet" type = "text/css" href = "Employee.css" />

<meta charset="UTF-8">
<title>SLIIT OOP Employee Management</title>
</head>
<body class="body" style="background-image: url('img/itm2.jpg')"> 
<jsp:include page="navbar.jsp" />
	
	<br>
	<center>
	<form method="get" action="GetItemServlet">
		<a type="submit" name="search"value="">
		<h1 class="tt">Items</h1></a>
	<br>
		
		
	</form>
	</center>
	<div id="search">
	<svg viewBox="0 -58 420 60" xmlns="http://www.w3.org/2000/svg">
		<rect class="bar"/>
		
		<g class="magnifier">
			<circle class="glass"/>
			<line class="handle" x1="32" y1="32" x2="44" y2="44"></line>
		</g>

		<g class="sparks">
			<circle class="spark"/>
			<circle class="spark"/>
			<circle class="spark"/>
		</g>

		<g class="burst pattern-one">
			<circle class="particle circle"/>
			<path class="particle triangle"/>
			<circle class="particle circle"/>
			<path class="particle plus"/>
			<rect class="particle rect"/>
			<path class="particle triangle"/>
		</g>
		<g class="burst pattern-two">
			<path class="particle plus"/>
			<circle class="particle circle"/>
			<path class="particle triangle"/>
			<rect class="particle rect"/>
			<circle class="particle circle"/>
			<path class="particle plus"/>
		</g>
		<g class="burst pattern-three">
			<circle class="particle circle"/>
			<rect class="particle rect"/>
			<path class="particle plus"/>
			<path class="particle triangle"/>
			<rect class="particle rect"/>
			<path class="particle plus"/>
		</g>
	</svg>
	
	<form method="get" action="GetItemServlet">
		<input type="text" name="search">
		<input type="submit" value ="___" aria-label="Search for inspiration" />
	</form>
	
</div>






<div id="results">


  <div class="ag-format-container">
  <div class="ag-courses_box">
  
  <c:forEach var="item" items="${searchList}">
  
    <div class="ag-courses_item">
      <a href="#" class="ag-courses-item_link">
        <div class="ag-courses-item_bg"></div>

        <div class="ag-courses-item_title">
         ${item.itemName}
        </div>
		
        <div class="ag-courses-item_date-box">
           <p class="card-text">${item.description}</p>
           <p class="card-text">USD ${item.price}</p>
          
        </div>
      </a>
    </div>

     </c:forEach>

  </div>
</div>




   











 
 
 
 
 
 
 
 
<div class="card5-container"> 

	<div class="card" style="width: 18rem; height: 515px;" >
  <img src="img/car-en.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title">Engine Items</h5>
    <p class="card-text">Power your drive with our precision-engineered engines, delivering top-notch performance and reliability.</p>
    
    <form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Engine" />
	</form>
    
    
  </div>
</div>




<div class="card" style="width: 18rem; height: 515px;">
  <img src="img/c4.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title">Transmission Items</h5>
    <p class="card-text">Seamless gear shifting for an unparalleled driving experience, ensuring smooth and efficient power transfer.</p>
   <form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Transmission" />
	</form>
    
  </div>
</div>

<div class="card" style="width: 18rem; height: 515px;">
  <img src="img/c3.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title"> System Items</h5>
    <p class="card-text">Maintain your engine's optimal temperature with our cooling systems, preventing overheating and ensuring peak performance.</p>
    <form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Cooling" />
	</form>
      </div>
</div>

<div class="card" style="width: 18rem; height: 515px;">
  <img src="img/c2.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title">Electrical Items</h5>
    <p class="card-text">lluminate the road with our premium electrical components, enhancing your vehicle's functionality.</p>
   <form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Electrical" />
	</form>
    
  </div>
</div>

<div class="card" style="width: 18rem; height: 515px;">
  <img src="img/c1.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title">Fuel System Items</h5>
    <p class="card-text">POptimize fuel delivery for maximum efficiency and power, saving you time and money on every journey.</p>
<form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Fuel" />
	</form>
      </div>
</div>


<div class="card" style="width: 18rem; height: 515px;">
  <img src="img/c6.jpg" class="card-img-top" alt="ProParts">
  <div class="card-body">
    <h5 class="card-title">Exhaust Items</h5>
    <p class="card-text">Reduce emissions and enhance performance with our exhaust solutions, designed for a cleaner and greener ride.</p>
   <form method="get" action="GetItemServlet">
		<input class="btn btn-primary" type="submit" name="search" value="Exhaust" />
	</form>
    
  </div>
</div>

</div> 
 
 
	 
<div class="card-container container text-center"> 



</div>


<jsp:include page="footer.jsp" />
   
<script>


console.clear();

var flkty = new Flickity( '.card-wrap', {
	contain: true,
	prevNextButtons: false,
	pageDots: false,
	wrapAround: true,
	adaptiveHeight: true,
	setGallerySize: false,
	selectedAttraction: 0.05,
	freeScrollFriction: .1
});

</script>
	
	


</body>
</html>