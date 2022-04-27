<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/login.css">
<script type="text/javascript">
	var login_result = "${login_result}";
	if(login_result=="fail") {
		alert("Wrong ID or PW. Try again");
	}
</script>
</head>
</head>
<body>
	<br><br><br>
	<div id="loginForm">
		<img src="http://localhost:9000/tp/resources/img/logo.png" id="logo">
		<br>
		<form name="login_form" action="login.do" method="post">
			<div>
				<p>ID</p><input type="text" name="id" placeholder="아이디를 입력해 주세요">
				<p>PW</p><input type="password" name="pw" placeholder="비밀번호를 입력해 주세요">
			</div>
			<button id="login_button" type="submit">로그인</button>
		</form>
		<div id="aux">
			<a href="join.do">회원가입</a>
			<a href="#">아이디 찾기</a>
			<a href="#">비밀번호 찾기</a>
		</div>
	</div>
</body>
</html>