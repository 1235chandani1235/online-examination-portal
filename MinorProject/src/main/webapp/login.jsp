<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<center>
		<div class="central-div">
			<form method="post" action="controller.jsp">
				<input type="hidden" name="page" value="login">
				<table>
					<tr>
						<td colspan="2">
							<center>
								<h2>Login Form</h2>
							</center>
						</td>
					</tr>
					<tr>
						<td><label>User Name</label></td>
						<td><input type="text" class="text" placeholder="User Name"
							name="username"></td>
					</tr>
					<tr>
						<td><label>Password</label></td>
						<td><input type="password" class="text"
							placeholder="Password" name="password"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<center>
								<input type="submit" value="Login" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>