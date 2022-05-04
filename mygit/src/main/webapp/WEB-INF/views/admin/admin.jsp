<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/admin.css"> 
<!-- 
<style type="text/css">
	section{
		margin: 0 auto;
		padding: 20px;
		width: 60%;
	}
	
	h1{
		display:block;
		height: 80px;
		font-size: 35px;
		margin: 20px;
	}
	
	table{
		margin: 20px;
	}
	
	td{
		display:inline-block;
		padding: 30px;
		height: 80px;
		margin-left: 50px;
	}
	
	button{
		margin-top:20px;
		margin-left: 50px;
		width: 600px;
		height: 60px;
		color: white;
		background: #444;
		padding: 15px;
		font-size: 20px;
		font-weight: 800;
		font-family: dodum;
		border-radius: 30px;
	}

</style> -->
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
<h1>관리자 페이지</h1>
<hr>
<table>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin1.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/member_list.do'">회원관리</button>
	</tr>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin2.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/reservation.do'">예약관리</button>
	</tr>
	<tr>
		<td><img src="http://localhost:9000/mygit/resources/images/admin/admin3.PNG" style="width:100px;height:100px"></td>
		<td><button type="button" onclick="location.href='admin/onwrite.do'">전시관리</button>
	</tr>
</table>
</section>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>