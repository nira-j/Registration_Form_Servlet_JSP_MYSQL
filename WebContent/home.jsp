<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="bean.StudentLogin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
</head>
<body>
<h2>You are logged in Successfully ! </h2>

<form action="profile" method="POST">
<input type="hidden" name="id" value=<c:out value="${id}"/>>
<button type="submit">See profile</button>
</form>
<h3>Welcome <c:out value="${ student }"/>!</h3>
<h3>your id is: <c:out value="${id}"/></h3>

</body>
</html>