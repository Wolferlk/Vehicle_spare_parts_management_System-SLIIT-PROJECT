<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
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
	
	

<br><br>
<center>
	<h2 class="h2">ADD SHOP</h2>

	   <h5>ProParts Company(pvt)</h5>
	
	<br>
	<br>

	<form method="POST" action="AddEmployeeServlet">
	<div class="form1">
		<table>

			<tr>
				<td>Shop Name</td>
				<td><input type="text" name="Sname" /></td>
			</tr>
			<tr>
				<td>Shop Address</td>
				<td><input type="text" name="Sadd" /></td>
			</tr>
			<tr>
				<td>Shop Owner</td>
				<td><input type="text" name="Sowner" /></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="text" name="Sphone" /></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="email" name="smail" /></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td><input type="text" name="Username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass1" /></td>
			</tr>
			<tr>
				<td>Password </td>
				<td><input type="password" name="pass2" /></td>
			</tr>
			<tr>
			<div/>
			
				<td colspan="2"><input type="submit" value="Add Employee" class="add-button" /> </td>
			</tr>
			<tr>	
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
			</tr>
		</table>
	</form>

	<form method="POST" action="ListEmployeeServlet">
		<table>
			<tr>
				<td colspan="2"><input type="submit" value="List All Employees" class="list-button" />
				</td>
			</tr>
		</table>
	</form>
	
</center>
	<jsp:include page="footer.jsp" />
	


</body>
</html>