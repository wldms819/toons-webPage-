<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//alert창의 메세지 지워버림
session.setAttribute("loginResult", "");
session.setAttribute("joinResult", "");
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./static/css/index.css" type="text/css"/>
	<style>
		html {
		background: url(static/image/toonBanner.png) no-repeat center fixed;
		background-size: cover;
	}
	</style>
	<title>TOONS</title>
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
<!--location.href = /toons/views-->
		<!-- Form -->
		<form action="./views/signIn.do" method="post">
			<!-- id input -->
			<div class="input__block">
				<input type="text" placeholder="id" class="input" id="email" name="user_id" value="blue" />
			</div>
			<br>
			<!-- password input -->
			<div class="input__block">
				<input type="password" placeholder="password" class="input" id="password" name="user_pw" value="berry" />
			</div>
			<br>
			<!-- sign in button -->
			<button class="signin__btn">
				Sign in
			</button>
		</form>
	</div>
	
	
	<script>
		document.querySelector("#signUp").onclick = function(){
			location.href="views/signUp.do"; //상대경로 //페이지를 띄위니 get으로 감
		};
	</script>
	
</body>

</html>