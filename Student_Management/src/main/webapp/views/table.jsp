<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<style>

table{
	border-collapse: collapse;
	width: 80%;
	
}

th,td{
	padding: 10px;
	border: 1px solid #ccc;
}
a{
text-decoration: none;
color: blue;
}

</style>
</head>
<body>

	<h2>Student Details</h2>

	<table border=1>
		<tr>
			<th>rollno</th>
			<th>name</th>
			<th>city</th>
			<th>date</th>
			<th>mobile</th>
			<th>email</th>
			<th>course</th>
			<th>gender</th>
		</tr>

		<c:forEach items="${get}" var="s">
		
		<tr>
		
		<td>${s.rollno}</td>
		<td>${s.name}</td>
		<td>${s.city}</td>
		<td>${s.date}</td>
		<td>${s.mobile}</td>
		<td>${s.email}</td>
		<td>${s.course}</td>
		<td>${s.gender}</td>
		
		
		
		</tr>
		
		
		</c:forEach>

	</table>
	<a href="click">Go To Welcome Page</a>

</body>
</html>