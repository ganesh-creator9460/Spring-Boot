<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="/css/login.css">
</head>
<body>

	<form action="/login" method="post">
		<h1>Login</h1>
		<br> <input type="text" name="username" placeholder="username"
			required><br>
		<br> <input type="password" name="password"
			placeholder="password" required><br>
		<br>

		<button type="submit">Login</button>
		<br>
		<br> <a href="/register">Register Here</a>

		<p>${message}</p>
		<p>${error}</p>
		<p>${username}</p>
		<p>${password}</p>

	</form>

</body>
</html>