<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		margin: 0; padding: 0;
	}
	footer {
		clear:both;
		margin: 40px;
		border-top: 1px solid black;
		padding-top: 50px;
	}
	footer div {
		display: inline-block;
		height: 200px;
	}
	footer div:first-child {
		width: 60%; float: left;
	}
	footer div:last-child {
		width: 300px; float: right;
		text-align: center;
	}
	footer div img:last-child {
		width: 150px; height: 100px;
	}
</style>
</head>
<body>
	<footer>
		<div>
			<p>대표자: 윤범모, 사업자등록번호: 138‒83‒00313</p>
			<p>대표전화: (서울) 02‒3701‒9500, (과천) 02‒2188‒6000, (덕수궁) 02‒2022‒0600, (청주) 043‒261‒1400</p>
			<p>© 2021 National Museum of Modern and Contemporary Art, Korea</p>
		</div>
		<div>
			<img src="http://localhost:9000/mygit/resources/img/logo.png">
			<img src="http://localhost:9000/mygit/resources/img/wa.jpg">
		</div>
	</footer>
</body>
</html>