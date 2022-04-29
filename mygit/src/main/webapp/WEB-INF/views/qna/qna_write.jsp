<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/qna/qna_write_update.css">
<script type="text/javascript"></script>
</head>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>
<body>
	<section>
	<h2>Q &amp; A</h2>
	<br><hr><br>
	<form>
	 	<table border="1">
		 	<tr>
			 	<th>제목</th>
			 	<td colspan="3"><input type="text" name="title" placeholder="제목을 입력하세요."></td>
		 	</tr>
		 	<tr>
		 		<td colspan="4"><textarea name="content"></textarea></td>
		 	</tr>
		 	<tr>
			 	<th>첨부파일</th>
			 	<td colspan="3"><input type="file" name="file1"></td>
		 	</tr>
	 	</table>
	 	<br><br>
	 	<!-- 버튼 -->
	 	<div>
		 	<button type="button" onclick="location.href='qna_list.do'">등록</button>
		 	<button type="button" onclick="location.href='qna_list.do'">취소</button>
	 	</div>
	 </form>
	</section>
</body>
</html>