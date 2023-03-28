<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	background: purple;
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
	margin-right: 40px;
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
			<li><a href="home">Register</a></li>
			<li><a href="viewAllList">View List</a></li>
		</ul>

		<div class="rightNav">
			<input type="text" name="search" id="search">
			<button class="btn btn-sm">Search</button>
		</div>
	</nav>
	<center>
		<marquee>
			<br> <br> <br> <br> <br> <br> <br>
			<h2 style="color: black;">WELCOME</h2>
		</marquee>
		<br> <br> <br>
		<h3>
			People who succeed have momentum.<br> The more they succeed, the
			more they want to succeed, and <br>the more they find a way to
			succeed. Similarly, <br>when someone is failing, the tendency is
			to get on a downward spiral<br> that can even become a
			self-fulfilling prophecy.<br>- Tony Robbins
		</h3>
	</center>
</body>

</html>
