<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Car Details</title>
<style>
/* CSS styles */
body {
    font-family: Arial, sans-serif;
    background-image: url('saveUpdate.jpg'); /* Replace 'path_to_your_image.jpg' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 900px;
    margin: 70px auto;
    padding: 70px;
   background-color: rgba(155, 155, 155, 0.5); /* Semi-transparent white background for better readability */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    margin-top: 20px;
}

input[type="number"],
input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

.highlight {
    background-color: #ffcc00;
}
</style>
</head>
<body>
<div class="container">
    <h2>Edit Car Details</h2>
    <% ResultSet rs = (ResultSet)request.getAttribute("resultSet");
    rs.next();
    %>
    <form action="saveUpdateCar" method="post">
        <input type="number" value="<%=rs.getInt(1)%>" name="carId" readonly="true"><br>
        <input type="text" value="<%=rs.getString(2)%>" name="carModel"><br>
        <input type="text" value="<%=rs.getString(3)%>" name="carBrand"><br>
        <input type="text" value="<%=rs.getString(4)%>" name="carColor" class="highlight"><br>
        <input type="number" value="<%=rs.getInt(5)%>" name="carPrice"><br>
        <input type="submit" value="Save Update">
    </form>
</div>
</body>
</html>
