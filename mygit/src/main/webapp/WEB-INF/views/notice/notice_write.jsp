<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/notice/notice_write_update.css">
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<section>
<form name="notice_write_form" action="notice_write.do" method="post" enctype="multipart/form-data">
		<h2>공지사항</h2>
		<hr>
	 	<table>
	 	<tr>
	 		<td><span class="inputLabel">제목</span></td>
	 		<td colspan="4"><input type="text" name="title" value="제목을 입력하세요." class="titleTextBox"></td>
	 		</tr>
	 		
	 	<tr>
	 	<td colspan="5"><hr></td>
	 	</tr>
	 	
	 	<tr>
	 	<td><span class="inputLabel">첨부파일</span></td>
	 	<td colspan="2"><input type="file" name="file1"></td>
	 	<td><span class="inputLabel">유형</span></td>
	 	<td>
	 	<select>
	 	<option value="공통">공통</option>
	 	<option value="서울">서울</option>
	 	<option value="미술은행">미술은행</option>
	 	<option value="어린이박물관">어린이박물관</option>
	 	</select></td>
	 	</tr>
	 	
	 	<tr>
	 	<td colspan="5"><hr></td>
	 	</tr>
	 	
	 	<tr>
	 	<td colspan="5" align="center"><textarea rows="20" cols="80" name="content"></textarea>
	 	</td>
	 	</tr>
	 	</table>
	 	<!-- 버튼 -->
	 	<button type="button" onclick="location.href='notice_list.do'" class="btn_normal">취소</button>
	 	<button type="button" onclick="location.href='notice_list.do'" class="btn_normal">등록</button>
	 </form>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>