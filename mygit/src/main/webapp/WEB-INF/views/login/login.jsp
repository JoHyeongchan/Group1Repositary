<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/login.css">
<script type="text/javascript">
	var login_result = "${login_result}";
	if(login_result=="fail") {
		alert("Wrong ID or PW. Try again");
	}

 	$(document).ready(function(){
 
 		$("#id_find").click(function(){	
 			$('.find_modal').css('display','block');
 			$('.find_content').css('display','block');
 			
 		});

 		$('#modal_close_btn').click(function() {
 			$('.find_modal').css('display','none');
 			$('.find_content').css('display','none');
		});

 		
 		$('#pass_find').click(function() {
 			$('.find_pass_modal').css('display','block');
 			$('.find_pass_content').css('display','block');
		});
 		
		$('#pass_modal_close_btn').click(function(){	
 			$('.find_pass_modal').css('display','none');
 			$('.find_pass_content').css('display','none');
 			
 		});
 		
 	});
	
	
</script>
<style type="text/css">
	.find_modal{
	position: fixed;
	width: 100%;
	height: 100%;
	display: none;
	left : 0;
	top: 0;
	background-color: rgba(147,149,151,0.9);
	}
	.find_content{
	background-color: white;
	width: 350px;
	height: 600px;
	position: fixed;
	left: 39%;
	top: 15%;
	display: none;
	padding: 40px;
	}
	.find_pass_modal{
	position: fixed;
	width: 100%;
	height: 100%;
	display: none;
	left : 0;
	top: 0;
	background-color: rgba(147,149,151,0.9);
	}
	.find_pass_content{
	background-color: white;
	width: 350px;
	height: 600px;
	position: fixed;
	left: 39%;
	top: 15%;
	display: none;
	padding: 40px;
	}
	
	#id_find{
	cursor: pointer;
	}
	#pass_find{
	cursor: pointer;
	}
	.find_content hr{
	margin-top: 20px;
	margin-bottom: 20px;	
	}
	.find_pass_content hr{
	margin-top: 20px;
	margin-bottom: 20px;	
	}
	#id_area{
	width: 330px;
	height: 30px;
	}
	#name_area{
	width: 330px;
	height: 30px;
	}
	.pass_area{
	height: 30px;
	width: 97px;
	}
	div form h4{
	padding-bottom: 15px;
	}
	#id_submit{
	background-color: #007843;
	width: 100%;
	height: 7%;
	border-radius: 15px;
	cursor: pointer;
	color: white;
	}
	#modal_close_btn{
	background-color: light-gray;
	width: 100%;
	height: 7%;
	border-radius: 15px;
	cursor: pointer;
	margin-top: 10px;
	}
	#pass_submit{
	background-color: #007843;
	width: 100%;
	height: 7%;
	border-radius: 15px;
	cursor: pointer;
	color: white;
	}
	#pass_modal_close_btn{
	background-color: light-gray;
	width: 100%;
	height: 7%;
	border-radius: 15px;
	cursor: pointer;
	margin-top: 10px;
	}
</style>
</head>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
	<br><br><br>
	<div id="loginForm">
		<img src="http://localhost:9000/mygit/resources/images/logo.png" id="logo">
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
			<a id="id_find">아이디 찾기</a>
			<a id="pass_find">비밀번호 찾기</a>
		</div>
	</div>
	
	<!-- 아이디찾기 모달창 -->
	<div class="find_modal">
		<form class="find_content">
			<h1>아이디 찾기</h1>
			<hr>
			<h3>이름과 연락처를 입력해주세요</h3>
			<br>
			<h4 style='text-align : center'>이름</h4>
			<input type="text" placeholder="이름을 입력하세요" id="name_area">
			<br><br>
			<h4 style='text-align : center'>연락처</h4>
			<select name="phone" class="pass_area">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="012">012</option>
				<option value="019">019</option>
			</select>
			<a>- </a><input type="text" maxlength="4" size="4" class="pass_area"> - <input type="text" maxlength="4" size="4" class="pass_area">
			<br><br>
			<input type="submit" value="아이디 찾기" id="id_submit">
			<input type="submit" id="modal_close_btn" value="닫기">
		</form>
	</div>
	
 	<!-- 비밀번호 찾기 모달창 -->
	<div class="find_pass_modal">
		<form class="find_pass_content">
			<h1>비밀번호 찾기</h1>
			<hr>
			<h3>아이디와 이름을 입력해주세요</h3>
			<br>
			<h4 style='text-align : center'>아이디</h4>
			<input type="text" placeholder="아이디를 입력하세요" id="id_area">
			<br><br>
			<h4 style='text-align : center'>이름</h4>
			<input type="text" placeholder="이름을 입력하세요" id="name_area">
			<br><br>
			<input type="submit" value="비밀번호 찾기" id="pass_submit">
			<input type="submit" id="pass_modal_close_btn" value="닫기">
		</form>
	</div>
</section>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>