<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="http://localhost:9000/mygit/resources/js/join.js"></script>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/join.css">
<script type="text/javascript">
	var join_result = "${join_result}";
	if(join_result=="fail") {
		alert("회원가입에 실패하였습니다.");
	}
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<br><br>
	<div id="joinForm">
		<form name="join_form" action="join.do" method="get">
			<h3>회원가입</h3>
			<br><br><hr><br>
			<table>
				<tr>
					<td>ID
					<td><input type="text" name="id" id="id"><button type="button" id="idcheck">중복 체크</button>
				</tr>
				<tr>
					<td>비밀번호
					<td><input type="password" name="pw" id="pw">
				</tr>
				<tr>
					<td>비밀번호 확인
					<td><input type="password" id="pwc">
				</tr>
				<tr>
					<td>이름
					<td><input type="text" name="name" id="name">
				</tr>
				<tr>
					<td>성별
					<td>
						<label><input type="radio" name="gender" class="radio" value="남성" checked> 남성 </label>
						<label><input type="radio" name="gender" class="radio" value="여성"> 여성 </label>
						<label><input type="radio" name="gender" class="radio" value="기타"> 기타 </label>
					</td>
				</tr>
				<tr>
					<td>이메일
					<td>
						<input type="text" name="email1" class="email" id="email1"> @
						<input type="text" name="email2" class="email" id="email2" placeholder="직접 입력">&nbsp;
						<select id="email3">
							<option hidden="hidden">선택
							<option>em1
							<option>em2
						</select>
					</td>
				</tr>
				<tr>
					<td>주소
					<td><input type="text" name="address" id="address">
				</tr>
				<tr>
					<td>전화번호
					<td>
						<select name="ph1">
							<option>010
							<option>017
							<option>018
						</select> - 
						<input type="number" name="ph2" class="phone" id="ph2" maxlength="4"> - 
						<input type="number" name="ph3" class="phone" id="ph3" maxlength="4">
					</td>
				</tr>
			</table>
			<br>
			<div>
				<button type="submit" id="joinCheck">회원가입</button>
				<button type="reset">취소</button>
			</div>
		</form>
	</div>
	<br><br>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>