<html>
<head>
<meta charset="ISO-8859-1">
<head>
<title>Simple web Development Template</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.navbar {
	display: flex;
	align-items: center;
	justify-content: center;
	position: sticky;
	top: 0;
	cursor: pointer;
}

.background {
	background: blue;
	background-blend-mode: darken;
	background-size: cover;
}

.nav-list {
	width: 70%;
	display: flex;
	align-items: center;
}

.nav-list li {
	list-style: none;
	padding: 26px 30px;
}

.nav-list li a {
	text-decoration: none;
	color: white;
}

.nav-list li a:hover {
	color: grey;
}

.rightnav {
	margin-right: 20px;
	width: 30%;
	text-align: right;
	width: 30%;
}

#search {
	padding: 5px;
	font-size: 17px;
	border: 2px solid grey;
	border-radius: 9px;
}
</style>
</head>
<body style="background-color: #D7FCFA;">
	<nav class="navbar background">
		<ul class="nav-list">
			<li><a href="register">Register</a></li>
			<li><a href="viewAllList">View List</a></li>
		</ul>
	</nav>
	<center>
		<marquee>
			<br> <br> <br> <br> <br> <br> <br>
			<h1 style="color: green;">WELCOME</h1>
		</marquee>
</body>

</html>
