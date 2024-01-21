<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%--<link rel="stylesheet" href="../static/css/mainPage.css" type="text/css" /> --%>
<style>
* {
	background-color: black;
	color: white;
}

table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
}

td, tr, th {
	padding: 5px;
}

img {
	width: 160px;
}

#logo {
	width: 200px;
}

#logo {
	/* display: inline; */
	/* padding-top: 80px;
	padding-left: 80px;
	padding-right: 30px
	padding-bottom: 30px; */
	
}

input {
	/* display: inline; */
	width: 90%;
	max-width: 680px;
	height: 50px;
	margin: 0 auto;
	border-radius: 8px;
	border: 1px solid white;
	background: rgba(#0f132a, .1);
	color: rgba(#0f132a, .3);
	padding: 0 0 0 15px;
	font-size: 14px;
	font-family: 'Montserrat', sans-serif;
}
</style>
<title>TOONS</title>
</head>
<body>
	<script>
		var updateResult = "${message}";
		if (updateResult != "") {
			alert(updateResult)
		}
	</script>

	<c:if test="${toonUserInfo!=null}">
		<script>
			alert("${toonUserInfo.user_name}님 반갑습니다.");
		</script>
	</c:if>

	<div id="menu">
		<img src="../static/image/Toons_logo.png" id="logo" />

		<form id="search_box" action="searchByToonName.do" method="post">
			<input type="text" placeholder="제목으로 검색" name="toon_name" />
			<button>검색</button>
		</form>

		<button id="favorites">favorites</button>
		<button id="myPage">myPage</button>
		<button id="logout">logout</button>
	</div>

	<div id="container">
		<table>
			<thead>
				<tr>
					<th>월요웹툰</th>
					<th>화요웹툰</th>
					<th>수요웹툰</th>
					<th>목요웹툰</th>
					<th>금요웹툰</th>
					<th>토요웹툰</th>
					<th>일요웹툰</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img src="image/mon/mon1.jpg" alt="신화급 귀속 아이템을 손에 넣었다"></td>
					<td><img src="../static/image/tue/tue1.jpg" alt="내가 키운 S급들"></td>
					<td><img src="../static/image/wed/wed1.jpg" alt="전지적 독자시점"></td>
					<td><img src="../static/image/thu/thu1.jpg"
						alt="앞집에는 나리가 살고있다"></td>
					<td><img src="../static/image/fri/fri1.jpg" alt="나혼자만렙뉴비"></td>
					<td><img src="../static/image/sat/sat1.jpg" alt="작전명 순정"></td>
					<td><img src="../static/image/sun/sun1.jpg"
						alt="고수, 후궁으로 깨어나다"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon2.jpg" alt="우아한 욕망"></td>
					<td><img src="../static/image/tue/tue2.jpg" alt="멸망 이후의 세계"></td>
					<td><img src="../static/image/wed/wed2.jpg" alt="성스러운 작가생활"></td>
					<td><img src="../static/image/thu/thu2.jpg" alt="남편을 죽여줘요"></td>
					<td><img src="../static/image/fri/fri2.jpg" alt="재혼황후"></td>
					<td><img src="../static/image/sat/sat2.jpg"
						alt="귀한했는데 입대 전날이다"></td>
					<td><img src="../static/image/sun/sun2.jpg" alt="아카데미의 천재칼잡이"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon3.jpg" alt="물어보는 사이"></td>
					<td><img src="../static/image/tue/tue3.jpg" alt="하루만 네가 되고싶어"></td>
					<td><img src="../static/image/wed/wed3.jpg" alt="울어봐, 빌어도 좋고"></td>
					<td><img src="../static/image/thu/thu3.jpg" alt="사내열애 사절!"></td>
					<td><img src="../static/image/fri/fri3.jpg" alt="대학원 탈출일지"></td>
					<td><img src="../static/image/sat/sat3.jpg" alt="세레나"></td>
					<td><img src="../static/image/sun/sun3.jpg" alt="입학용병"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon4.jpg" alt="개같이 탈출"></td>
					<td><img src="../static/image/tue/tue4.jpg" alt="시한부인줄 알았어요!"></td>
					<td><img src="../static/image/wed/wed4.jpg" alt="ELECEED"></td>
					<td><img src="../static/image/thu/thu4.jpg" alt="뮤즈온 유명"></td>
					<td><img src="../static/image/fri/fri4.jpg"
						alt="언니, 이번생엔 내가 왕비야"></td>
					<td><img src="../static/image/sat/sat4.jpg" alt="스터디그룹"></td>
					<td><img src="../static/image/sun/sun4.jpg" alt="약한영웅"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon5.jpg"
						alt="악당 가족이 독립을 반대한다"></td>
					<td><img src="../static/image/tue/tue5.jpg" alt="유사연애"></td>
					<td><img src="../static/image/wed/wed5.jpg" alt="튜토리얼 탑의 고인물"></td>
					<td><img src="../static/image/thu/thu5.jpg" alt="내향남녀"></td>
					<td><img src="../static/image/fri/fri5.jpg" alt="흑요석의 신부"></td>
					<td><img src="../static/image/sat/sat5.jpg" alt="나를바꿔줘"></td>
					<td><img src="../static/image/sun/sun5.jpg" alt="청춘계시록"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon6.jpg" alt="좀비묵시록"></td>
					<td><img src="../static/image/tue/tue6.jpg" alt="초인의 게임"></td>
					<td><img src="../static/image/wed/wed6.jpg" alt="중간에서 만나"></td>
					<td><img src="../static/image/thu/thu6.jpg" alt="가족 같은 XX"></td>
					<td><img src="../static/image/fri/fri6.jpg"
						alt="전남편의 미친개를 길들였다"></td>
					<td><img src="../static/image/sat/sat6.jpg"
						alt="나를 미워하던 남편의 기억을 잃었다"></td>
					<td><img src="../static/image/sun/sun6.jpg"
						alt="오로지 너를 이기고 싶어"></td>
				</tr>
				<tr>
					<td><img src="../static/image/mon/mon7.jpg" alt="칼가는 소녀"></td>
					<td><img src="../static/image/tue/tue7.jpg" alt="저 그런 인재 아닙니다"></td>
					<td><img src="../static/image/wed/wed7.jpg"
						alt="내가 죽기로 결심한 것은"></td>
					<td><img src="../static/image/thu/thu7.jpg" alt="시한부 천재 암픅기사"></td>
					<td><img src="../static/image/fri/fri7.jpg" alt="문제적 왕자님"></td>
					<td><img src="../static/image/sat/sat7.jpg"
						alt="흑화한 노예남을 길들였다"></td>
					<td><img src="../static/image/sun/sun7.jpg"
						alt="아무래도 결혼을 잘못한것같다"></td>
				</tr>
			</tbody>
		</table>
	</div>

	<script>
		document.querySelector("#favorites").onclick = function() {
			location.href = "myfavorites.do"; //상대경로 //페이지를 띄위니 get으로 감
		};

		document.querySelector("#myPage").onclick = function() {
			location.href = "myPage.do"; //상대경로 //페이지를 띄위니 get으로 감
		};

		document.querySelector("#logout").onclick = function() {
			location.href = "signIn.do"; //상대경로 //페이지를 띄위니 get으로 감
		};
	</script>
</body>
</html>