<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.Registration,com.dao.registrationDAO,java.util.*"%>
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

header span {
	float: right;
}

header span ul li {
	float: left;
	display: inline-block;
	margin-top: 50px;
}

header span ul li a {
	color: #444;
	text-transform: uppercase;
	font-weight: bold;
	display: block;
	margin-right: 20px;
}
</style>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> 
</head>
<body style="background-color: teal;">

<header style="background-color: silver;">
	<div class="wrapper">
		<h1>Available Records<span class="color">.</span></h1>
		<span>
			<ul>
				<li><a href="testIndex.html">Home</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</span>
	</div>
</header>
<script src="jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
<h2 align="center">Registered Data</h2>
<% 

registrationDAO dao =new registrationDAO();
List<Registration> list=dao.show(); 
%><div style="background-color: silver;" class="table-responsive">

			<table class="table" border="2" >
				<thead>
				<tr style="color: teal;">
					<th><h4>Firstname</h4></th>
					<th><h4>Lastname</h4></th>
					<th><h4>Gender</h4></th>
					<th><h4>EmailId</h4></th>
					<th><h4>Mobile_no</h4></th>
					<th><h4>Address</h4></th>
					<th><h4>City</h4></th>
					<th><h4>State</h4></th>
					<th><h4>Pincode</h4></th>
					<th><h4>Comments</h4></th>
				</tr>
				</thead>
				<%for(Registration r:list) {%>
				<tbody>
				<tr>
					<td>
						<%=r.getFname()%>
					</td>
					<td>
						<%=r.getLname()%>
					</td>
					<td>
						<%=r.getGender()%>
					</td>
					<td>
						<%=r.getEmail()%>
					</td>
					<td>
						<%=r.getPhone()%>
					</td>
					<td>
						<%=r.getAddress()%>
					</td>
					<td>
						<%=r.getCity()%>
					</td>
					<td>
						<%=r.getState()%>
					</td>
					<td>
						<%=r.getPin()%>
					</td>
					<td>
						<%=r.getComment()%>
					</td>
				</tr></tbody>
				<%} %>

			</table>
			<h2><a href='testIndex.html'>Home</a></h2>
			</div>




</body>
</html>