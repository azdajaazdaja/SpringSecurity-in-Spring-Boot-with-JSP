<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Register</title>
</head>
<body>
	<div>
		<h3>Register</h3>
		</br>
		<form method="post" action="/administrator/register" modelAttribute="newUser">
			<div>
				<label>UserName:</label> </br> <input type="text" id="username"
					name="username">
			</div>
			<div>
				<label>Password:</label> </br> <input type="password" id="password"
					name="password">
			</div>
			<div>
				<label>Role:</label> </br> <input type="role" id="role" name="role">
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>