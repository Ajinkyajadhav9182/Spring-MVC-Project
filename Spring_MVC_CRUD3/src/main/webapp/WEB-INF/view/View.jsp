<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View List</title>
</head>
<body style="background-color: #DEEE6E;">
	<center>
		<table border="2" cellpadding="10px">
			<br>
			<br>
			<tr style="color: red;">
				<td>Id</td>
				<td>Name</td>
				<td>Mobile No</td>
				<td>Email</td>
				<td>Address</td>
				<td>Action</td>
			</tr>
			<c:forEach items="${list }" var="list" varStatus="varStatus">
				<tr style="color: purple;" align="center">
					<td>${list.id}</td>
					<td>${list.name }</td>
					<td>${list.mobileno }</td>
					<td>${list.email }</td>
					<td>${list.address }</td>
					<td><a href="delete?d=${list.id}" onClick="fun1()">Delete</a>
						&nbsp <a href="update?u=${list.id}">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
		<br> <br> <br> <a href="home" style="color: green;">Back</a>
	</center>
	<script type="text/javascript">
		function fun1() {
			alert("Successfully Deleted")
		}
	</script>

</body>
</html>