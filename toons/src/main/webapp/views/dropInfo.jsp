<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dropInfo</title>
<style>
* {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<h1>회원탈퇴</h1>
	<!-- Form -->
	<form action="dropInfo.do" method="post">
		<!-- id input -->
		<div class="input__block">
			<input type="text" placeholder="id" class="input" id="email"
				name="user_id" value="${toonUserInfo.user_id}" required />
		</div>
		<br>
		<!-- password input -->
		<div class="input__block">
			<input type="password" placeholder="password" class="input"
				id="password" name="user_pw" value="${toonUserInfo.user_pw}"
				required />
		</div>
		<br>
		<!-- sign in button -->
		<button class="signin__btn">회원탈퇴</button>
	</form>
</body>
</html>