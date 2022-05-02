<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/member_list.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://localhost:9000/mygit/resources/js/member_list.js"></script>
</head>
<header>
<jsp:include page="../../header.jsp"></jsp:include>
</header>
<body>
	<br><br>
	<section>
		<h3>상세 검색</h3>
		<br>
		<form name="member_list" action="member_list.do" method="post">
			<table border="1">
				<tr>
					<th>ID
					<td><input type="text" name="id">
					<th>성명
					<td><input type="text" name="name">
					<th>성별
					<td>
						<label><input type="radio" name="gender" class="radio" value="남성" checked> 남성 </label>
						<label><input type="radio" name="gender" class="radio" value="여성"> 여성 </label>
						<label><input type="radio" name="gender" class="radio" value="기타"> 기타 </label>
					</td>
				</tr>
				<tr>
					<th>E-mail
					<td><input type="text" name="email">
					<th>주소
					<td><input type="text" name="address">
					<th>전화번호
					<td>
						<input type="number" name="phone">
					</td>
				</tr>
				<tr>
					<th>가입일
					<td colspan="5"><input type="date"> ~ <input type="date">
				</tr>
			</table>
			<br><br>
			<div>
				<button type="submit">검색</button>
				<button type="reset">초기화</button>
			</div>
		</form>
	</section><br><br>
	
	<section>
		<table border="1" id="res_table">
			<tr>
				<th>ID
				<th>성명
				<th>성별
				<th>E-mail
				<th>주소
				<th>전화번호
				<th>가입일
			</tr>
			<% for(int i=0;i<10;i++) { %>
			<tr class="row">
				<td class="id">---
				<td>---
				<td>---
				<td>---
				<td>---
				<td>---
				<td>---
			</tr>
			<% } %>
			<!-- 
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.id }
					<td>${vo.name }
					<td>${vo.gender }
					<td>${vo.email }
					<td>${vo.address }
					<td>${vo.phone }
					<td>${vo.joindate }
				</tr>
			</c:forEach>
			 -->
		</table>
	</section>
</body>
</html>