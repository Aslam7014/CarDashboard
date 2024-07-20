<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CAR DASHBOARD</title>
<style>
/* CSS styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('index.jpg'); /* Replace 'path_to_your_image.jpg' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
     height: 100vh;
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: rgba(155, 155, 155, 0.5); /* Semi-transparent white background for better readability */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
}

form {
    text-align: center;
    margin-top: 20px;
}

form a {
    display: inline-block;
    margin: 0 10px;
    padding: 10px 20px;
    text-decoration: none;
    background-color: #007bff;
    color: #fff;
    border-radius: 5px;
}

form a:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
    <h1>WELCOME TO THE CAR DASHBOARD</h1>
    <form action="">
        <a href="AddCar.jsp">ADD NEW CARS</a>
        <a href="displayAllCars">DISPLAY ALL CARS</a>
    </form>
</div>
</body>
</html>
