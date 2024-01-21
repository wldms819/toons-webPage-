<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../static/css/index.css" type="text/css" />
<style>
html {
	background: url(../static/image/toonBanner.png) no-repeat center fixed;
	background-size: cover;
}
</style>
<title>SIGN UP</title>
</head>
<body>
	<div class="container">
		<!-- Heading -->
		<h1>SIGN UP</h1>

		<!-- Links -->
		<ul class="links">
			<li>
				<button id="signIn">SIGN IN</button>
			</li>
			<li>
				<button id="signUp" disabled>SIGN UP</button>
			</li>
		</ul>

		<!-- Form -->
		<form action="signUp.do" method="post">
			<!-- id input -->
			<div class="input__block">
				<input type="text" placeholder="id" class="input" id="email"
					name="user_id" required/>
			</div>
			<br>
			<!-- password input -->
			<div class="input__block">
				<input type="password" placeholder="password" class="input"
					id="password" name="user_pw" required />
			</div>
			<br>
			<!-- user_name input -->
			<div class="input__block">
				<input type="text" placeholder="name" class="input name_birth"
					id="name_birth" name="user_name" required/>
			</div>
			<br>
			<!-- user_birthDate input -->
			<div class="input__block">
				<input type="text" placeholder="birthday ex)YYYY-MM-DD"
					class="input name_birth" id="name_birth" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" name="user_birthDate" required/>
			</div>
			<br>
			<!-- sign in button -->
			<button class="signin__btn">Sign up</button>
		</form>
	</div>

	<script>
		document.querySelector("#signIn").onclick = function() {
			location.href = "signIn.do";
		};
	</script>
</body>
</html>