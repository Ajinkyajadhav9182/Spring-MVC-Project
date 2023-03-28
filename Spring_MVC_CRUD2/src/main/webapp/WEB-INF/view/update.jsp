<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Update Yourself</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
body {
	font-family: Calibri, Helvetica, sans-serif;
	background-color: white;
}

.container {
	height: 400px;
	padding: 240px;
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
	color: white;
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

<body border="1">

	<div class="container">
		<center>
			<h1>Update Data</h1>
		</center>
		<form action="up">
			<label> Id : </label> <input type="hidden" value="${m1.id }"
				name="id" /> <input type="text" disabled="disabled"
				value="${m1.id }" /> <br> <label> Name : </label> <input
				type="text" value="${m1.name }" name="name" /> <label>
				Phone : </label> <input maxlength="10" type="text" value="${m1.mobileno }"
				name="mobileno" /> <label>Email : </label> <input type="text"
				value="${m1.email}" name="email" /> <label>Address : </label> <input
				type="text" value="${m1.address }" name="address"> <input
				type="Submit" onClick="fun1()" value="Update" class="registerbtn" /><br>
			<br> <a href="viewAllList" class="registerbtn">Back</a>&nbsp
			&nbsp &nbsp &nbsp &nbsp &nbsp<a href="register" class="registerbtn">Register</a>
	</div>
	</form>
	<script type="text/javascript">
		var msg = '${msg}';
		if (msg != '') {
			swal(msg)
		}
	</script>
</body>
</html>