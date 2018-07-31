<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.Registration,com.dao.registrationDAO,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> 
<title>updatePage</title>

<style>
* {
	margin:0;
	padding:0;
	box-sizing:border-box;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-font-smoothing:antialiased;
	-moz-font-smoothing:antialiased;
	-o-font-smoothing:antialiased;
	font-smoothing:antialiased;
	text-rendering:optimizeLegibility;
}

#email_validation, #name_validation {
	display: none;
}

label.required:after {
	content: '*';
	color: red;
}

span.error {
	background-color: #FFDFDF;
	color: red;
}

.row {
	margin: 5px;
}

body {
	font-family:"Open Sans", Helvetica, Arial, sans-serif;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	background-image: url("");
	background:teal
	;
}
.container {
	max-width:800px;
	width:100%;
	margin:0 auto;
	position:relative;
	color:gray;
}
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

<script>
	
	function validateFname() {
		var valid = 1;
		var fname_validation = document.getElementById("fname_validation");
		var fname = document.getElementById('fname');
		var filter=/^([A-Za-z])+$/;
		
		if (fname.value ==="") {
			valid = 0;
			fname_validation.innerHTML = "Please Enter First Name";
			fname_validation.style.display = "block";
			fname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if (!filter.test(fname.value)) {
			valid = 0;
			fname_validation.innerHTML = "Please Enter Proper first Name";
			fname_validation.style.display = "block";
			fname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else {
			fname_validation.style.display = "none";
			fname_validation.parentNode.style.backgroundColor = "transparent";
		}}
	
	function validatelname() {
		var valid = 1;
		var lname = document.getElementById('lname');
		var lname_validation = document.getElementById("lname_validation");
		var filter=/^([A-Za-z])+$/;
		if (lname.value === "") {
			valid = 0;
			lname_validation.innerHTML = "Please Enter Last Name";
			lname_validation.style.display = "block";
			lname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if (!filter.test(lname.value)) {
			valid = 0;
			lname_validation.innerHTML = "Please Enter Proper last Name";
			lname_validation.style.display = "block";
			lname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else {
			lname_validation.style.display = "none";
			lname_validation.parentNode.style.backgroundColor = "transparent";
		}}
	
	function validateMobile()
	{var valid = 1;
		var mnopat=/[7-9]{1}[0-9]{9}/;
		var mno=document.getElementById("mnumber")
		var mobileNo_validation=document.getElementById("MobileNo_validation");
		if(mno.value===""){
			var valid = 0;
			mobileNo_validation.innerHTML="Please Enter Mobile Number";
			mobileNo_validation.style.display = "block";
			mobileNo_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if(!mnopat.test(mno.value))
			{
			var valid = 0;
				mobileNo_validation.innerHTML="Please Enter Valid Mobile Number";
				mobileNo_validation.style.display = "block";
				mobileNo_validation.parentNode.style.backgroundColor = "#FFDFDF";
			}else {
				mobileNo_validation.style.display = "none";
				mobileNo_validation.parentNode.style.backgroundColor = "transparent";
			}
		
	}
	

	function validateemail() {
		var valid = 1;
		var email = document.getElementById('email');
		var email_validation = document.getElementById("email_validation");		
		
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (email.value === "") {
			valid = 0;
			email_validation.innerHTML = "Please Enter E-mail ";
			email_validation.style.display = "block";
			email_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else if (!filter.test(email.value)) {
			valid = 0;
			email_validation.innerHTML = "Please Enter Valid E-mail";
			email_validation.style.display = "block";
			email_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} 
		else {
			email_validation.style.display = "none";
			email_validation.parentNode.style.backgroundColor = "transparent";
		}
		if (!valid)
			return false;
	}
	
	
	
	
	function validateform() {
		var valid = 1;
		var email = document.getElementById('email');
		var email_validation = document.getElementById("email_validation");
		var fname_validation = document.getElementById("fname_validation");
		var lname_validation = document.getElementById("lname_validation");
		var message_validation = document.getElementById("message_validation");
		var mno=document.getElementById("Mnumber");
		var mobileNo_validation=document.getElementById("MobileNo_validation");
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var filter1=/^([A-Za-z])+$/;
		var mnopat=/[7-9]{1}[0-9]{9}/
		
		if (fname.value ==="") {
			valid = 0;
			fname_validation.innerHTML = "Please Enter First Name";
			fname_validation.style.display = "block";
			fname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if (!filter1.test(fname.value)) {
			valid = 0;
			fname_validation.innerHTML = "Please Enter Proper first Name";
			fname_validation.style.display = "block";
			fname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else {
			fname_validation.style.display = "none";
			fname_validation.parentNode.style.backgroundColor = "transparent";
		}	
		if (lname.value === "") {
			valid = 0;
			lname_validation.innerHTML = "Please Enter Last Name";
			lname_validation.style.display = "block";
			lname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if (!filter1.test(lname.value)) {
			valid = 0;
			lname_validation.innerHTML = "Please Enter Proper last Name";
			lname_validation.style.display = "block";
			lname_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else {
			lname_validation.style.display = "none";
			lname_validation.parentNode.style.backgroundColor = "transparent";
		}
		if (email.value === "") {
			valid = 0;
			email_validation.innerHTML = "Enter Email Id";
			email_validation.style.display = "block";
			email_validation.parentNode.style.backgroundColor = "#FFDFDF";
		}else if (!filter.test(email.value)) {
			valid = 0;
			email_validation.innerHTML = "Invalid email address";
			email_validation.style.display = "block";
			email_validation.parentNode.style.backgroundColor = "#FFDFDF";
		} else {
			email_validation.style.display = "none";
			email_validation.parentNode.style.backgroundColor = "transparent";
		}
		if (!valid)
			return false;
	}
	
	
	
	
</script>
 <script>
                function clearForm(form) {
                    var $f = $(form);
                    var $f = $f.find(':input').not(':button, :submit, :reset, :hidden');
                    $f.val('').attr('value','').removeAttr('checked').removeAttr('selected');
                }
            </script>



</head>
<body>
<header style="background-color: silver;">
	<div class="wrapper">
		<h1>Update Page<span class="color">.</span></h1>
		<aa>
			<ul>
				<li><a href="testIndex.html">Home</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</aa>
	</div>
</header>
<script src="jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>


<%String fname=request.getParameter("fname");
	registrationDAO dao =new registrationDAO();
	Registration register=dao.retriveData(fname); %>
	
<%
	boolean a=dao.validate(fname);
		
if(!a){%><form style="background-color: silver;"><div align="center" style="color: teal;">
		<h2 style="color: black;">Enter correct First Name!!!</h2>
	</div></form>
	<%}else {%>
	
	



	<div class="container" style="background-color:teal;">
			
		
		<form style="color: teal; background-color: silver;" class="well form-horizontal" id="contact_form" onsubmit="return validateform()"  action="newUpdateservlet">
			<h1 align="center">Update Form </h1>
				<div class="row">
				<div class="col-md-10"> 

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">First Name*</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="fname"
								name="fname" value="<%=register.getFname()%>"  class="form-control"
								type="text" onblur="validateFname()"><br /> <span
								id="fname_validation" class="error"></span>

						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">Last Name*</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="lname"
								name="lname" value="<%=register.getLname()%>" class="form-control"
								type="text" onblur="validatelname()"> <span
								id="lname_validation" class="error"></span>
						</div>
					</div>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-3 control-label">E-Mail*</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input id="email"
								name="email" readonly="readonly" value="<%=register.getEmail()%>"  class="form-control"
								type="text" onblur="validateemail()"> <span
								id="email_validation" class="error"></span>
						</div>
					</div>
				</div>




				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">Mobile NO #</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> 
								<input  name="phone" id="mnumber"
								 class="form-control" value="<%=register.getPhone()%>" type="text" onblur="validateMobile()" maxlength ="10">
								 <span
								id="MobileNo_validation" class="error"></span>
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">Address</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="address"
								class="form-control" value="<%=register.getAddress()%>" required type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">City</label>
					<div class="col-md-6 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="city"
								 class="form-control" type="text" required value="<%=register.getCity()%>">
						</div>
					</div>
				</div>

				

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-3 control-label">Pin Code</label>
					<div class="col-md-8 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="pin"
								 class="form-control" required value="<%=register.getPin()%>" type="text">
						</div>
					</div>
				</div>



				<!-- Success message -->


				<!-- Button -->
				<div align="center"  class="form-group">
					<label class="col-md-3 control-label"></label>
					<div class="col-md-8">

							
							<input type="submit" style="width: 90px;" class="btn btn-success" value="Submit" />
							

					</div></div>
				</div>

			</div>
		</form>
	</div><%} %>


</body>
</html>