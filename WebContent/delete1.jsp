<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1 {
	font-family: 'Crete Round', serif;
	font-weight: bold;
	color: #444;
	font-size: 45px;
	margin-bottom: 20px;
}
.wrapper {
	margin: 0 auto;
	padding: 0 10px;
	width: 940px;
}
header {
	height: 120px;
}

header h1 {
	float: left;
	margin-top: 32px;
}

header h1 .color {
	color: #02b8dd;
}

header aa {
	float: right;
}

header aa ul li {
	float: left;
	display: inline-block;
	margin-top: 50px;
}

header aa ul li a {
	color: #444;
	text-transform: uppercase;
	font-weight: bold;
	display: block;
	margin-right: 20px;
}
</style>
</head>
<body>
<header style="background-color: silver;">
	<div class="wrapper">
		<h1>Delete<span class="color">.</span></h1>
		<aa>
			<ul>
				<li><a href="testIndex.html">Home</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</aa>
	</div>
</header>
	<%
	int a=(Integer)request.getAttribute("status");
			
if(a==1){%><form style="background-color: silver;"><div align="center" style="color: teal;">
		<h2 style="color: black;">Record Deleted Successfully</h2>
	</div></form>
	<%}else{%>
	<form style="background-color: silver;"><div align="center" style="color: teal;">
		<h2 style="color: black;">Record Not Available</h2>
	</div></form>
	<%} %>



</body>
</html>