<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
body {
	width: 100%;
	font-family: Calibri, Helvetica, sans-serif;
	background-color: pink;
	width: 100%;
}

.container {
	height: 400px;
	padding: 240px;
	margin-bottom: 10px;
	background-color: lightblue;
}

input[type=text], input[type=password], textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: orange;
	outline: none;
}

div {
	padding: 10px 0;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

.registerbtn {
	background-color: #4CAF50;
	color: red;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 104%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<form action="add">
		<div class="container">
			<center>
				<h1>Registeration Form</h1>
			</center>
			<hr>
			<label> Name : </label> <input type="text" name="name"
				placeholder="Enter Name" required /> <label> Phone : </label> <input
				maxlength="10" type="text" name="mobileno" placeholder="Phone No"
				required> <label for="email"> Email : </label> <input
				type="text" placeholder="Enter Email" name="email" required>
			Current Address : <input type="text" placeholder="Enter Address"
				name="address" required><input type="Submit"
				onClick="fun1()" value="Submit" name="sub" class="registerbtn"
				required /><br> <br> <br> <br>
			<center>
				&nbsp &nbsp &nbsp &nbsp &nbsp <a href="viewAllList"
					class="registerbtn">View List</a>
			</center>
	</form>
	<script type="text/javascript">
		var msg = '${msg}';
		if (msg != '') {
			swal(msg)
		}
	</script>
</body>
</html>