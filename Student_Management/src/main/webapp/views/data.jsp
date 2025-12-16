<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fill Form</title>
<link rel="stylesheet" href="css/data.css">
</head>
<body>
    <div class="container">
        <h1>Student Detail</h1>
        <form action="/data" method="post">
           <label for="name">Name :</label> <input id="name" type="text" name="name" placeholder="Enter your name" required><br>

            <label for="rollno">Rollno :</label> <input id="rollno" type="number" name="rollno" placeholder="Enter your rollno" required><br>

            <label for="date">Date of Birth :</label> <input id="date" type="date" name="date" value="date" required><br>

            <label for="email">Email Id :</label> <input id="email" type="email" name="email" placeholder="Enter your Email address" required><br>

            <label>Gender :</label> <label for="Male"><input id="Male" type="radio" name="Gender" value="Male"> Male</label><label
                for="Female"> <input id="Female" type="radio" name="Gender" value="Female"> Female</label>

            <label for="mobile">Mobile No. :</label> <input id="mobile" type="tel" name="Mobile" placeholder="Enter your Mobile No." required><br>

            <label for="city">City :</label> <select id="city" name="city">
                <option value="">--select--</option>
                <option value="Pune">Pune</option>
                <option value="Mumbai">Mumbai</option>
                <option value="city">Nagpur</option>
                <option value="Chattrapati Sambhaji Nagar">Chattrapati Sambhaji Nagar</option>
                <option value="Akola">Akola</option>
                <option value="Nashik">Nashik</option>
            </select><br>

            <label>Course :</label> <input type="checkbox" name="Course" value="Java"> Java <input type="checkbox" name="Course"
                value="Python"> Python <input type="checkbox" name="Course" value="CSS"> CSS <input type="checkbox"
                name="Course" value="HTML"> HTML<br><br>

            <button type="submit">Add Data</button>
            
            <p>${error}</p>

        </form>
    </div>

</body>
</html>