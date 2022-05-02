<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>
<h1>관리자 페이지</h1>
<hr>
<table>
	<tr>
		<td><img src="#" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/member_list.do'">회원관리</button>
	</tr>
	<tr>
		<td><img src="#" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/reservation.do'">예약관리</button>
	</tr>
	<tr>
		<td><img src="#" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/onwrite.do'">전시관리</button>
	</tr>
</table>
</body>
</html>