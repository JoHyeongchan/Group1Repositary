<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
 
 section{
	width: 90%;
	margin-left: 5%;
 	margin-top: 100px;

 }
 
 section h2{
 	font-size: 35px;
 	text-indent: 100px;
 }
 
 .list {
 	list-style-type: none;
 	text-align: center;
 }
 
a:active, a:visited, a:link{
	color:black;
	text-decoration: none;
}
 
a:hover{
	font-weight:bolder;
	text-decoration: underline;
} 
 .linkBlock{
 	width: 180px;
 	height: 400px;
 	float: left;
 	margin-top: 60px;
 	margin-bottom: 40px;
 	margin-left: 100px;
 	margin-right:100px;
 	font-size: 20px;
 	text-indent: 10px;

 }
 
 .linkBlock:last-of-type:after {
	clear:both;
}
</style>

</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<section>
<h2>Site Map</h2>
<br>
<hr>
<br>
<div class="linkBlock" align="center">
	<h3>관람/참여</h3>
	<hr>
	<table class="list">
	<tr><td><a href="notice_list.do">공지</a></td></tr>
	<tr><td><a href="comment_list.do">관람후기</a></td></tr>
	<tr><td><a href="faq_list.do">FAQ</a></td></tr>
	<tr><td><a href="qna_list.do">Q&A</a></td></tr>
	</table>
</div>

<div class="linkBlock" align="center">
	<h3>전시</h3>
	<hr>
	<table class="list">
	<tr><td><a href="off_now.do">현재전시</a></td></tr>
	<tr><td><a href="off_past.do">과거전시</a></td></tr>
	<tr><td><a href="off_future.do">예정전시</a></td></tr>
	</table>

</div>

<div class="linkBlock" align="center">
	<h3>디지털미술관</h3>
	<hr>
	<table class="list">
	<tr><td><a href="on_show.do">온라인전시</a></td></tr>
	<tr><td><a href="on_content.do">온라인소장품</a></td></tr>
	<tr><td><a href="usergal_list.do">사용자갤러리</a></td></tr>
	</table>
</div>

<div class="linkBlock" align="center">
	<h3>예약</h3>
	<hr>
	<table class="list">
	<tr><td><a href="reservation.do">전시예약</a></td></tr>
	</table>
</div>

<div class="linkBlock" align="center">
	<h3>서브메뉴</h3>
	<hr>
	<table class="list">
	<tr><td><a href="join.do">회원가입</a></td></tr>
	<tr><td><a href="login.do">로그인</a></td></tr>
	</table>
</div>

</section>

<jsp:include page="../footer.jsp"></jsp:include>
 
</body>
</html>