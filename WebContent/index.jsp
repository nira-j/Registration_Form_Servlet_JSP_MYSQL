<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
    <h2>Home Page</h2>
	<a href="register.jsp">Register</a>
	<a href="login.jsp">Login</a>
</body>
	<c:if test="${not empty status}">
		<script type="text/javascript">
		window.addEventListener("load",function(){
			alert("${status}");
		});
		</script>
	</c:if>
	<c:remove var="status" scope="session"/>
</html>