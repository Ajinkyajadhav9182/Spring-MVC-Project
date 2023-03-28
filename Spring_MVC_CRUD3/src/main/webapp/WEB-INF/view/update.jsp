<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Yourself</title>
</head>
<body style="background-color:#FFBE33;">
	<center> <br> <br> <br> <br>
		<form action="up" style="color: blue;">
			Id : <input  type="text" value="${m1.id }" name="id" disabled="disabled"/> <br>
			<br> Name : <input type="text" value="${m1.name }" name="name" />
			<br> <br> Mobile No : <input type="text"
				value="${m1.mobileno }" name="mobileno" /> <br> <br>
			Email : <input type="text" value="${m1.email}" name="email" /> <br>
			<br> <br> Address : <input type="text"
				value="${m1.address }" name="address" /> <br> <br> <input
				type="submit" onClick="fun()" value="Update" style="color: green;"/>
		</form>
	</center>
</body>
<script type="text/javascript">
	function fun() {
		alert("Data Update Sucessfully")
	}
</script>
</html>