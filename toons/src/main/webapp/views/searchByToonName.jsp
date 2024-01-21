<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONS</title>
<style type="text/css">
* {
	background-color: black;
	color: white;
}

img {
	width: 320px;
}
</style>
</head>
<body>
	<h1>검색한 웹툰</h1>

	<c:forEach items="${toonList}" var="toonList">
		<img src="<c:url value='${toonList.toon_url}'/>" />
	</c:forEach>

	<%-- <c:forEach items="${toonList2}" var="toonList2">
		<img src="<c:url value='${toonList2.toon_url}'/>" />
	</c:forEach> --%>

	<br><br>
	<button id="mainPage">메인으로</button>

	<script>
		document.querySelector("#mainPage").onclick = function() {
			location.href = "mainPage.do"; //상대경로 //페이지를 띄위니 get으로 감
		};
	</script>


</body>
</html>