<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/tp/resources/css/admin.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
<h1>관리자 페이지</h1>
<hr>
<table>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin1.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='member_list.do'">회원관리</button>
	</tr>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin2.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='reservation.do'">예약관리</button>
	</tr>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin3.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='onlist.do'">전시 목록 관리</button>
	</tr>
	<!-- 
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin3.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='onwrite.do'">전시관리</button>
	</tr> -->
</table>
</section>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>