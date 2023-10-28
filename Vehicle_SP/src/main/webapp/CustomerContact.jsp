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

<link rel="stylesheet" href="allcss2.css" />




<link rel = "stylesheet" type = "text/css" href = "Employee.css" />

<meta charset="UTF-8">
<title>SLIIT OOP Employee Management</title>
</head>
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 
<jsp:include page="navbar.jsp" />
	
	<h1 class="tt">Contact Us</h1>
	
	 <button class="reachUs-button">Call us</button>
  
 
    <!-- banner section  -->
    
    <!-- Contact form -->
    <section class="contact-form">
        <div class="form-container">
            <h2>Your Details</h2>
            <form action="ContactServlet" method="POST">
 
                <label for="name">Name: </label>
                <input type="text" id="name" name="name" required>
 
                <label for="email">Email: </label>
                <input type="email" id="email" name="email" required>
 
                <label for="phone">Phone: </label>
                <input type="tel" id="phone" name="phone">
 
                <label for="message">Message: </label>
                <textarea id="message" name="message" rows="4" required></textarea>
 
                <button type="submit" class="submit-button">Submit</button>
            </form>
        </div>
    </section>
    
    
   <center> <iframe
  width="1425"
  height="350"
  frameborder="0" style="border:0"
  referrerpolicy="no-referrer-when-downgrade" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.065922685333!2d80.05774030995518!3d6.255045726199902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae1813c5366d8b1%3A0x61e94035fe60cb0!2sSD%20MUSIC%20RECORDS!5e0!3m2!1sen!2slk!4v1697352022498!5m2!1sen!2slk" allowfullscreen>
</iframe></center>
    
 <jsp:include page="footer.jsp" />
    <!-- Company contact info -->
    <section class="contact-info">
        <h3>Contact Information</h3><br>
        
        <address>
            PRO PARTS (PVT) LTD.<br>
            512 Main Street<br>
            Colombo, 5200<br>
            Phone: <a href="tel:1234567890">0778231121</a><br>
            Email: <a href="mailto:info@proparts.com">info@Proparts.com</a>
        </address>
    </section>
 
    <!-- Footer section -->
    
    <script src="script.js"></script>
</body>


	
	


</body>
</html>