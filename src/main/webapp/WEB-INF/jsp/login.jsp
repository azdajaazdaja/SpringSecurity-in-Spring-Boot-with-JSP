<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login</title>
</head>
<body>
	<div>
		<h3>Login</h3>
		<form name='loginForm'
		  action="<c:url value='/login' />" method='POST'>
			<div>
				<label>UserName:</label> </br> <input type="text" id="username"
					name="username">
			</div>
			<div>
				<label>Password:</label> </br> <input type="password" id="password"
					name="password">
			</div>

			<button type="submit">Submit</button>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>