<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<style>

section{
	width: 80%;
	margin: 0 auto;
	padding-top:50px;
}
h1{
	display:inline-block;
	font-size: 35px;
	font-weight: bolder;
	
	padding-bottom: 50px;
}

.imgContentBox{
	text-align: center;
	min-height: 500px;
	padding: 50px;
}

table{
	
	width: 100%;
	font-size: 15px;
}
th{
	padding: 20px;
	width: 100px;
}

td{
	padding: 10px;
}

tr{

	height: 20px;
}

p{
	width: 60%;
	display: block;
	margin-left: 50px;
}

.bottomBox{
	padding-left: 50px;
	
}

.bottomTr{
	cursor:pointer;
}

.dispIcon{
	width: 60px;
	height: 25px;
	color:white;
	background-color: darkgray;
	text-align: center;
	padding-top: 5px;
	border-radius: 15px;
}

#dispImg{
	width: 400px;
	height: 500px;
	border: lightgray 1px solid;
}
</style>
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<section>
<h1>이동훈 | 백목련 | 연도미상</h1>
<hr>
<div class="imgContentBox"><img src="#" height="400px" id="dispImg"></div>
<hr>
<div class="contentDescTable">
<table>
	<tr>
		<th>작가명</th><td>이동훈 LEE Donghoon</td>
	</tr>
	<tr>
		<th>작품명</th><td>백목련</td>
	</tr>
	<tr>
		<th>제작연도</th><td>연도미상</td>
	</tr>
	<tr>
		<th>재료</th><td>캔버스에 유채</td>
	</tr>
	<tr>
		<th>규격</th><td>45.5×37.5</td>
	</tr>
	<tr>
		<th>부문</th><td>회화</td>
	</tr>
	<tr>
		<th>관리번호</th><td>PA-01764</td>
	</tr>
	<tr>
		<th>전시상태</th><td><div class="dispIcon">비전시</div></td>
	</tr>
	
	<tr><td colspan="2"><hr></td></tr>
	
	<tr><td colspan="2"><p>이동훈(1903-1984)의 -백목련- 은 푸른 색조로 표현된 주변의 영향으로 활짝 만개한 목련의 자태가 더욱 청초해 보인다.
	불투명 색채로 매끈하게 처리된 화병과 배경이 주제를 돋보이게 하고 있다.</p></td></tr>
	
	<tr><td colspan="2"><hr></td></tr>
	
	<tr onclick="location.href='../on_content.do'" class="bottomTr"><td class="bottomBox">이전글</td><td><b>장미꽃</b></td></tr>
	<tr><td colspan="2"><hr></td></tr>
	
	<tr onclick="location.href='../on_content.do'" class="bottomTr"><td class="bottomBox">다음글</td><td><b>복숭아</b></td></tr>

	<tr><td colspan="2"><hr></td></tr>
</table>
</div>	 
</section>	
<button type="button" onclick="location.href='../on_content.do'">목록</button>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>