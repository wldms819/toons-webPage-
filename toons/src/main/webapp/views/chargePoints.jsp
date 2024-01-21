<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chargePoints</title>
<style>
* {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<h1>포인트 충전</h1>
	<!-- Form -->
	<form action="chargePoints.do" method="post">
		<!-- id input -->
		<div class="input__block">
			<input type="text" placeholder="id" class="input" id="email"
				name="user_id" />
		</div>
		<div class="input__block">
			<input type="text" placeholder="포인트 충전" class="input" id="email"
				name="charge_points" />
		</div>

		<button class="signin__btn">포인트 충전</button>
	</form>

	<br>${message} 
	<br>${toonUserInfo}
	<br> <button id="mainPage">메인으로</button>
	
	<script>
	document.querySelector("#mainPage").onclick = function(){
		location.href="mainPage.do"; //상대경로 //페이지를 띄위니 get으로 감
	};
	</script>
</body>
</html>