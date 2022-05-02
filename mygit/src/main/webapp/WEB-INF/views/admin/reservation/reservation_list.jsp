<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/tp/resources/css/reservation_list.css">
</head>
<body>
	<header>
		<jsp:include page="../../header.jsp"></jsp:include>
	</header>
	<section>
		<form>
			<h3>예약 검색</h3>
			<br>
			<table border=1>
				<tr>
					<td>회원 ID
					<td><input type="text" name="id">
				</tr>
				<tr>
					<td>전시명
					<td><input type="text" name="rtitle">
				</tr>
				<tr>
					<td>방문 일자
					<td><input type="text" name="rdate">
				</tr>
				<tr>
					<td>방문 시각
					<td><input type="text" name="rtime">
				</tr>
				<tr>
					<td>방문 인원
					<td><input type="text" name="rnumber">
				</tr>
			</table>
			<br><br>
			<div>
				<button type="submit">검색</button>
				<button type="reset">초기화</button>
			</div>
		</form>
		
		<br><hr><br>
		<table border="1" id="res_search_result">
			<tr>
				<th>회원 ID
				<th>전시명
				<th>방문 일자
				<th>방문 시각
				<th>방문 인원
				<th>예약 취소
			</tr>
			<tr>
				<td>--
				<td>--
				<td>--
				<td>--
				<td>--
				<td><button type="button">취소</button>
			</tr>
		</table>
	</section>
</body>
</html>