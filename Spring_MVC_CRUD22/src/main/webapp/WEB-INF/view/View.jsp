<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View List</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
body {
	height: 100%;
}
body {
	margin: 0px;
	background-color: white;
	font-family: sans-serif;
	font-weight: 100;
}
table {
	width: 900px;
	height: 300px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}
th, td {
	padding: 15px;
	background-color: rgba(255, 255, 255, 0.2);
	}
td {
}
th {
	text-align: left;
}
thead {th { background-color:#55608f;	
}
}
tbody {tr { &:hover {
			background-color : rgba(200, 255, 255, 0.3);
}
}
td {
	position: relative; &: hover { & : before { 
				 content : "";
	position: absolute;
	left: 0;
	right: 0;
	top: -9999px;
	bottom: -9999px;
	background-color: rgba(222, 255, 255, 0.2);
	z-index: -1;
}
}
}
}
</style>
</head>
<body>
	<center>
		<div class="container">
			<table style="border-radius: 20px">
				<thead>
					<tr style="color: red; background-color: pink;">
						<td>&nbsp &nbsp Sr</td>
						<td>&nbsp &nbspId</td>
						<td>&nbsp &nbsp &nbsp Name</td>
						<td>&nbsp &nbsp &nbsp Mobile No</td>
						<td>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Email</td>
						<td>&nbsp &nbspAddress</td>
						<td>&nbsp &nbsp &nbsp &nbsp Action</td>
					</tr>
				</thead>
				<c:set var="i" value="1" />
				<c:forEach items="${list }" var="list" varStatus="varStatus">
					<tr align="center" style="border-bottom: 1px solid blue;">
						<td>${i}</td>
						<td>${list.id}</td>
						<td>${list.name }</td>
						<td>${list.mobileno }</td>
						<td>${list.email }</td>
						<td>${list.address }</td>
						<td><a href="delete?d=${list.id}" onClick="fun1()">Delete</a>
							&nbsp <a href="update?u=${list.id}">Edit</a></td>
					</tr>
					<c:set var="i" value="${i+1 }" />
				</c:forEach>
			</table>
			<br> <br> <br>
			<center>
				<a href="home">Back</a>
			</center>
		</div>
	</center>
	<script type="text/javascript">
		function fun1() {
			alert("Successfully Deleted")
		}
	</script>
</body>
</html>