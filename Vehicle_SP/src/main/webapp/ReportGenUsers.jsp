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
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 



	<jsp:include page="navbar.jsp" />
	


 
	<center>
	
        <h1 class="tt">Users Report Generation</h1>
   </center>     
        <br></br>
        
        <div class = "tbl1">
        
        
        
        
        
        
        </div>
        
        
        
        
        
   <center>  
   
   
   <form action="GeneratePDFServlet" method="get">
        <input type="submit" class=" " value="Run Java"></form>
   
   
      
    <div class="addshop-container">
        <button action="GenPdf" class="button-29" onclick="downloadPDF()">Download PDF</button>
        <button href="AdminDash.jsp" class="button-29" onclick="goBack()">Generate another </button>
        <button  href="AdminDash.jsp" class="button-29" onclick="goToDashboard()">Dashboard</button>
    </div>
</center>
    <script>
        function downloadPDF() {
            VSPM_system/src/main/java/com/test/GenPdf.java
            // Example: window.print() to open the browser's print dialog
        }

        function goBack() {
            // Your go back logic here
            // Example: window.history.back()
        }

        function goToDashboard() {
            // Your go to dashboard logic here
            // Example: window.location.href = "dashboard.html";
        }
    </script>


	<jsp:include page="footer.jsp" />
	


</body>
</html>