<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    *{
        margin: 0px;
    }
    header{
        margin-bottom: 20px;
        font-size: 25px;
        height: 50px;
        background-color: gray;
        color: green;
        text-align: center;
    }
    input{
        
        border-radius: 10px;
        font-size: 20px;
        height: 25px;
        width: 400px;
        margin: 10px;
    }
    #loginform{
        padding: 50px;
        background-color: rgb(179, 176, 175);
        width: 500px;
        margin: auto;
        height: 100vh;
        
    }
    #loginform #submitbtn{
        background-color: green;
    }
</style>
<body>
    <header>Student Login</header>
    <form action="loginservlet" id="loginform" method="POST">
        <h2>Student Login</h2>
        <input type="text" name="name" placeholder="Enter your name"><br>
        <input type="password" placeholder="Enter Password" name="password"><br>
        <input id="submitbtn" type="submit" value="Login">
    	<input id="submitbtn" type="submit" value="Reset Password">
    </form>

</body>
	<c:if test="${not empty student}">
		<script type="text/javascript">
		window.addEventListener("load",function(){
			alert("${student}");
		});
		</script>
	</c:if>
	<c:remove var="student" scope="session"/>
</html>