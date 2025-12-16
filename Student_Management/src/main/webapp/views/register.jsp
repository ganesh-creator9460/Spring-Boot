<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
<link rel="stylesheet" href="/css/register.css">
</head>
<body>

<form action="/register" method="post">

<h2>Register</h2><br>

<label>Username :</label><input type="text" name="username" placeholder="Enter username" required><br><br>
<label>Password :</label><input type="password" name="password" placeholder="Enter password" required><br><br>

<button type="submit">Register</button>

<a style="color: white;" href="/login">Go To Login</a>

<h1>${error}</h1>

</form>

</body>
</html>