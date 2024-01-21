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
<title>SIGN IN</title>
</head>
<body>
	<div class="container">
		<!-- Heading -->
		<h1>SIGN IN</h1>

		<!-- Links -->
		<ul class="links">
			<li>
				<button id="signIn" disabled>SIGN IN</button>
			</li>
			<li>
				<button id="signUp">SIGN UP</button>
			</li>
		</ul>

		<!-- Form -->
		<form action="signIn.do" method="post">
			<!-- id input -->
			<div class="input__block">
				<input type="text" placeholder="id" class="input" id="email"
					name="user_id" />
			</div>
			<br>
			<!-- password input -->
			<div class="input__block">
				<input type="password" placeholder="password" class="input"
					id="password" name="user_pw" />
			</div>
			<br>
			<!-- sign in button -->
			<button class="signin__btn">Sign in</button>
		</form>
	</div>

	<script>
		document.querySelector("#signUp").onclick = function() {
			location.href = "signUp.do";
		};
	</script>

	<script>
		var loginResult = "${loginResult}";
		if (loginResult != "") {
			alert(loginResult)
		}

		var joinResult = "${joinResult}";
		if (joinResult != "") {
			alert(joinResult)
		}

		//alert(${logoutResult})

		var deleteResult = "${message}";
		if (deleteResult == "") {
			alert(deleteResult)
		}
	</script>
</body>
</html>