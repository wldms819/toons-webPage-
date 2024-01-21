<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<style>
* {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<h1>mypage</h1>

	<%--내정보조회, 내정보수정, 포인트 충전 --%>
	<h2>내 정보</h2>
	${toonUserInfo}

	<h2>내 정보 수정</h2>
	<!-- Form -->
	<form action="myPage.do" method="post">
		<!-- id input -->
		<div class="input__block">
			<input type="text" placeholder="id" class="input" id="email"
				name="user_id" value="${toonUserInfo.user_id}" required readonly />
		</div>
		<br>
		<!-- password input -->
		<div class="input__block">
			<input type="password" placeholder="password" class="input"
				id="password" name="user_pw" value="${toonUserInfo.user_pw}"
				required />
		</div>
		<br>
		<!-- user_name input -->
		<div class="input__block">
			<input type="text" placeholder="name" class="input name_birth"
				id="name_birth" name="user_name" value="${toonUserInfo.user_name}"
				required/>
		</div>
		<br>
		<!-- user_birthDate input -->
		<div class="input__block">
			<input type="text" placeholder="birthday ex)YYYY-MM-DD"
				class="input name_birth" id="name_birth"
				pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" name="user_birthDate"
				value="${toonUserInfo.user_birthDate}" required readonly />
		</div>
		<br>
		<!-- sign in button -->
		<button class="signin__btn">회원 정보 수정</button>
	</form>

	<h2>수정된 내 정보</h2>
	${message} <br>
	${updateUserInfo}<br>
	
	<button id="chargePoints">포인트 충전</button>
	<button id="dropInfo">회원탈퇴</button>
	<button id="mainPage">메인으로</button>
	
	<script>
	document.querySelector("#mainPage").onclick = function(){
		location.href="mainPage.do"; //상대경로 //페이지를 띄위니 get으로 감
	};
	
	document.querySelector("#dropInfo").onclick = function(){
		location.href="dropInfo.do"; //상대경로 //페이지를 띄위니 get으로 감
	};
	
	document.querySelector("#chargePoints").onclick = function(){
		location.href="chargePoints.do"; //상대경로 //페이지를 띄위니 get으로 감
	};
	</script>
</body>
</html>