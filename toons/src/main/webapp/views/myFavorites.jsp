<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorites</title>
<style>
* {
	background-color: black;
	color: white;
}

img {
	width: 160px;
}
</style>
</head>
<body>
	<h1>Favorites</h1>
	<h2>내웹툰목록조회</h2>
	<c:forEach items="${myToonList}" var="myToonList">
		<img src="<c:url value='${myToonList.toon_url}'/>" />
	</c:forEach>


	<h2>내웹툰목록추가</h2>
	<form action="addToons.do" method="post">
		<!-- //session에 저장되어 있는 id불러외
		//toonlist를 session에 저장해 웹툰 이름 가져오기 -->
		<div class="input__block">
			<input type="text" placeholder="id" class="input" id="email"
				name="user_id" value="${user_id}" readonly />
		</div>
		<div>
			<select name="toon_no">
				<c:forEach items="${sToonList}" var="sToonList" varStatus="status">
					<option value="${sToonList.toon_no}">${sToonList.toon_name}</option>
				</c:forEach>
			</select>
		</div>
		<br>
		<button class="signin__btn">내웹툰목록추가</button>
	</form>

	<h2>내웹툰목록삭제</h2>
	<form action="deleteToons.do" method="post">
		<!-- //session에 저장되어 있는 id불러외
		//toonlist를 session에 저장해 웹툰 이름 가져오기 -->
		<div class="input__block">
			<input type="text" placeholder="id" class="input" id="email"
				name="user_id" value="${user_id}" readonly />
		</div>
		<div>
			<select name="toon_no">
				<c:forEach items="${sToonList}" var="sToonList" varStatus="status">
					<option value="${sToonList.toon_no}">${sToonList.toon_name}</option>
				</c:forEach>
			</select>
		</div>
		<br>
		<button class="signin__btn">내웹툰목록삭제</button>
	</form>
	
	<br> <button id="mainPage">메인으로</button>
	
	<script>
	document.querySelector("#mainPage").onclick = function(){
		location.href="mainPage.do"; //상대경로 //페이지를 띄위니 get으로 감
	};
	</script>
</body>
</html>