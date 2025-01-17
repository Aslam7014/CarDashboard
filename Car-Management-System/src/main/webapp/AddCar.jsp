<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        /* Styles for the body */
       body {
    font-family: Arial, sans-serif;
    background-image: url('a.jpg'); /* Replace 'path_to_your_image.jpg' with the actual path to your image file */
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

        /* Styles for the form heading */
        .container h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Styles for the form input fields */
        .container input[type="number"],
        .container input[type="text"] {
            width: calc(100% - 10px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Styles for the submit button */
        .container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color:#fc2323;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .container input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ADD NEW CARS HERE</h1>
        <form action="addCar" method="post">
            <input type="number" placeholder="Enter car Id" name="carId"><br>
            <input type="text" placeholder="Enter car Model" name="carModel"><br>
            <input type="text" placeholder="Enter car Brand" name="carBrand"><br>
            <input type="text" placeholder="Enter car Color" name="carColor"><br>
            <input type="number" placeholder="Enter car Price" name="carPrice"><br>
            <input type="submit" value="ADD">
        </form>
    </div>
</body>
</html>
