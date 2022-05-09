<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/online/online_colmov_write.css">

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
	<h1>소장품 입력</h1>
	<hr>
	<form name="collectionInputForm" action="collectionWrite.do" method="post" class="content_layout">	
	<table id="inputTable" border="1">
	<tr>
		<th>제목</th><td colspan="3"><input type="text" name="col_title" class="longInput"></input></td>
	</tr>
	<tr>
		<th>이미지</th><td colspan="3"><input type="file" name="col_file" class="longInput"></td>
	</tr>
	<tr>
		<th>작가명</th><td><input type="text" name="col_author" class="shortInput"></td>
	
		<th>작품명</th><td><input type="text" name="col_name" class="shortInput"></td>
	</tr>
	<tr>
		<th>제작연도</th><td><input type="text" name="col_year" class="shortInput"></td>
	
		<th>재료</th><td><input type="text" name="col_material" class="shortInput"></td>
	</tr>
	<tr>
		<th>규격</th><td><input type="text" name="col_dimention" class="shortInput"></td>
	
		<th>부문</th><td><input type="text" name="col_subject" class="shortInput"></td>
	</tr>
	<tr>
		<th>내용입력</th><td colspan="3"><textarea rows="20" cols="80" name="col_content"></textarea></td>
	</tr>	
	</table>
	<hr>
	<button type="button" onclick="location.href='collectionList.do'" class="btnList">취소</button>
	<button type="button" onclick="location.href='collectionList.do'" class="btnList">등록</button>
	</form>		 
</section>	

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>