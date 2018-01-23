<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Register</title>
</head>
<body>
	<div>
		<h3>Register</h3>
		</br>
		<form method="post" action="/administrator/registerNewUser" modelAttribute="newUser">
			<div>
				<label>UserName:</label> </br> <input type="text" id="username"
					name="username">
			</div>
			<div>
				<label>Password:</label> </br> <input type="password" id="password"
					name="password">
			</div>
			<div>
				<label>Role:</label> 
				<select name="role">
					<option value="Administrator">Administrator</option>
					<option value="Dispatcher" selected>Dispatcher</option>
				</select>
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div>
			<button type="submit">Submit</button>
			</div>
		</form>
	</div>
</body>
</html>