<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Student</title>
</head>
<style>
	*{
		margin: 0px;
		font-size: large;
	}
header{
	text-align: center;
	color: green;
	height: 50px;
	background-color: gray;
	
}
.choice{
	margin-top:5px;
	margin-bottom:5px;
	height: 20px;
	width: 50px;
}
input{
	margin: 5px;
	border-radius: 10px;
	width: 400px;
	height: 40px;
}
#registerform{
	text-align: center;
	font-size: 20px;
	padding-top: 50px;
	width: 600px;
	padding-bottom: 50px;
	margin: auto;
	background-color: bisque;
}
</style>
<body>
	<header>
		<h2>Registration Form</h2>
	</header>
	
	<form name="myform" action="registerservlet" method="POST" id="registerform" onsubmit="return validate()">
	
	<input type="text" name="name" placeholder="Enter name of Student"><br>
	
	<input type="text" name="email" id="" placeholder="Enter EmailId"><br>

	<h4>Gender</h4> 
	Male<input class="choice" type="radio" name="gender" value="male">
	Female<input class="choice" type="radio" name="gender" value="female"><br>

	<input type="text" name="contact" id="" placeholder="Contact No."><br>

	<input type="text" name="state" id="" placeholder="State"><br>

	<input type="text" name="city" id="" placeholder="city"><br>

	<input type="text" name="college" placeholder="College Name"><br>

	<input type="text" name="dob" id="" placeholder="Date Of Birth"><br>

	<input type="password" name="password" id="" placeholder="Password"><br>

	<input type="password" name="conpass" id="" placeholder="Confirm Password"><br>

	<input type="submit" value="Register">

	</form>
	
</body>

<script>
	function validate(){
		var name=document.myform.name.value;
		var email=document.myform.email.value;
		var gender=document.myform.gender.value;
		var contact=document.myform.contact.value;
		var state=document.myform.state.value;
		var city=document.myform.city.value;
		var college=document.myform.college.value;
		var dob=document.myform.dob.value;
		var password=document.myform.password.value;
		var conpass=document.myform.conpass.value;

		if (name==null ||name==""){
			alert("name can not be blank !");
			return false;
		}else if(email==null || email==""){
			alert("email can not be blank !");
			return false;
		}else if(contact==null || contact==""){
			alert("contact can not be blank !");
			return false;
		}else if(state==null || state==""){
			alert("state can not be blank !");
			return false;
		}else if(city==null || city==""){
			alert("city can not be blank !");
			return false;
		}else if(college==null || college==""){
			alert("college can not be blank !");
			return false;
		}else if(dob==null || dob==""){
			alert("dob can not be blank !");
			return false;
		}else if(password.length < 6){
			alert("password must beat least 6 character !");
			return false;
		}else if(password != conpass){
			alert("password must match with confirm password !");
			return false;
		}
	}
</script>
</html>