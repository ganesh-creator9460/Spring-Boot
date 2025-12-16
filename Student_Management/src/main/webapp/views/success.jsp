<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Added Page</title>
<link rel="stylesheet" href="/css/success.css">
</head>
<body>

<form>
<h1>Student Data Added Successfully</h1>

<label>Rollno :</label>${rollno}<br>
<label>Name :</label>${name}<br>
<label>Email Id :</label>${email}<br>
<label>Gender :</label>${gender}<br>
<label>Date Of Birth :</label>${date}<br>
<label>Mobile No. :</label>${mobile}<br>
<label>City :</label>${city}<br>
<label>Course :</label>${course}<br>
<a href="add">Go to Add Data</a>
</form>

</body>
</html>