<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


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
    <div class="supplier-form">
        <h1>Edit Spare Item</h1>
        <!-- Search Form -->
        <form action="search_spare_item.jsp" method="POST">
            <label for="searchTerm">Search by Item Code or Name:</label>
            <input type="text" id="searchTerm" name="searchTerm" placeholder="Enter Item Code or Name" required>
            <button type="submit">Search</button>
        </form>
        
        <!-- Display Item Details -->
        <div id="itemDetails" style="display: none;">
            <form action="update_spare_item.jsp" method="POST">
                <label for="itemName">Item Name:</label>
                <input type="text" id="itemName" name="itemName" placeholder="Item Name" required>
                
                <label for="itemPrice">Item Price:</label>
                <input type="text" id="itemPrice" name="itemPrice" placeholder="Item Price" required>
                
                <label for="itemDescription">Item Description:</label>
                <textarea id="itemDescription" name="itemDescription" placeholder="Item Description" rows="4" required></textarea>
                
                <label for="itemType">Item Type:</label>
                <select id="itemType" name="itemType" required>
                    <option value="Type1">Type 1</option>
                    <option value="Type2">Type 2</option>
                    <option value="Type3">Type 3</option>
                </select>
                
                <button type="submit">Save</button>
                
                <!-- Delete Button -->
                <button type="button" id="deleteButton">Delete</button>
            </form>
        </div>
    </div>
</div>

<!-- JavaScript to toggle item details display -->
<script>
    document.querySelector('form[action="search_spare_item.jsp"]').addEventListener('submit', function(event) {
        event.preventDefault();
        // Replace the following lines with JavaScript logic to fetch and display item details based on the search term
        // For demonstration purposes, I'm showing/hiding the item details form with a placeholder message.
        const itemDetailsDiv = document.getElementById('itemDetails');
        itemDetailsDiv.style.display = 'block';
        itemDetailsDiv.innerHTML = '<p>Item details will be displayed here after searching.</p>';
        
        // Add event listener to the delete button
        const deleteButton = document.getElementById('deleteButton');
        deleteButton.addEventListener('click', function() {
            // Replace with JavaScript logic to delete the item (e.g., make an AJAX request to delete on the server)
            alert('Item deleted.'); // Placeholder alert
        });
    });
</script>
	<jsp:include page="footer.jsp" />
	
</body>
</html>