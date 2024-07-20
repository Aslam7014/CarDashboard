<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car List</title>
<style>
/* CSS styles */
body {
    font-family: Arial, sans-serif;
    background-image: url('display.jpg'); /* Replace 'path_to_your_image.jpg' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    
    margin: 0;
    padding: 0;
    height: 100vh;
}
.container {
    max-width: 900px;
    margin: 70px auto;
    padding: 70px;
   background-color: rgba(155, 155, 155, 0.5); /* Semi-transparent white background for better readability */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

th {
     background-color: rgba(155, 155, 155, 0.5);
    font-weight: bold;
    padding: 8px;
    text-align: left;
}

td {
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

a {
    text-decoration: none;
    color: blue;
    margin-right: 10px;
}.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
     display: flex;
    justify-content: center;
    align-items: flex-end;
   
}
.button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<%ResultSet rs = (ResultSet) request.getAttribute("Result"); %>
<table border="">
<tr>
<th>CarId</th>
<th>CarModel</th>
<th>CarBrand</th>
<th>CarColor</th>
<th>CarPrice</th>
<th>UPDATE</th>
<th>DELETE</th>
</tr>

<%while(rs.next()){ %>
<tr>
    <td><b><%=rs.getInt(1)%></b></td>
    <td><b><%=rs.getString(2)%></b></td>
    <td><b><%=rs.getString(3)%></b></td>
    <td><b><%=rs.getString(4)%></b></td>
    <td><b><%=rs.getInt(5)%></b></td>
    <td><b><a href="updatecar?carId=<%=rs.getInt(1)%>"> UPDATE </a></b></td>
    <td><b><a href="deletecar?carId=<%=rs.getInt(1)%>"> DELETE </a></b></td>
</tr>
<%} %>
</table>

 <a href="Index.jsp" class="button">CAR DASHBOARD</a>

</body>
</html>
