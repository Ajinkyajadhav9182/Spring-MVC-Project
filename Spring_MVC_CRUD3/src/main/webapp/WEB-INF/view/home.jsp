<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body border="1" style="background-color: pink;">
	<center>
		<form action="add" style="color: blue;">
			<br> <br> <br> <br>Name : <input type="text"
				name="name" placeholder="Enter Name " required /> <br> <br>Mobile
			No : <input type="text" name="mobileno"
				placeholder="Enter Mobile No " required /> <br> <br> Email
			: <input type="email" name="email" placeholder="Enter Email Address "
				required /> <br> <br>Address : <input type="text"
				name="address" placeholder="Enter Address " required /> <br> <br>
			<input type="Submit" onClick="fun1()" value="Submit" name="sub"
				style="color: red;" required /> <br> <br> <a
				href="viewAllList">View List</a> <br> <br> <br>
		</form>
	</center>
	<script type="text/javascript">
		function fun1() {
			alert("Registration Completed")
		}
	</script>
</body>
</html>