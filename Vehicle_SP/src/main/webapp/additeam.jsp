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
<body class="body" style="background-image: url('img/213.jpg')"> 



	<jsp:include page="navbar.jsp" />
	  <div class="container">
        <form class="supplier-form" action="ItemAdd" method="post">
            <h1>Add Item</h1>
            
            <label for="itemName">Item Name:</label>
            <input type="text" id="itemName" name="itemName" required>
            
            
            
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" class="textarea form-control" required></textarea>
            
            <label for="itemType">Item Type:</label>
            <select id="itemType" name="itemType" required>
                <option value="Engine">Engine</option>
			    <option value="Brakes">Brakes</option>
			    <option value="Transmission">Transmission</option>
			    <option value="Cooling System">Cooling System</option>
			    <option value="Electrical">Electrical</option>
			    <option value="Fuel System">Fuel System</option>
			    <option value="Exhaust">Exhaust</option>
			    <option value="Tires">Tires</option>
			    <option value="Suspension">Suspension</option>
			    <option value="Wheel & Axle">Wheel & Axle</option>
			    <option value="Belts & Hoses">Belts & Hoses</option>
			    <option value="Steering">Steering</option>
			    <option value="Ignition">Ignition</option>
			    <option value="other">Other</option>
            </select>
            
            <label for="itemImage">Item Image:</label>
            <input type="file" id="itemImage" name="itemImage" accept="image/*"  value="null">
            
           
            
             <input type="submit" name="submit" value="Add Shop" class="btn btn-primary"/>
            
        </form>
    </div>
    
	<jsp:include page="footer.jsp" />
	


</body>
</html>