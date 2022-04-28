<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>

</head>
<body>
<form>
	
	 	<table border="1">
	 	<tr>
	 	<td><span>제목</span></td>
	 	<td colspan="4"><input type="text" name="title" value="제목을 입력하세요."></td>
	 	</tr>
	 	<tr>
	 	<td><span>첨부파일</span></td>
	 	<td colspan="2"><input type="file" name="file1"></td>
	 	<td>유형</td>
	 	<td>
	 	<select>
	 	<option value="공통">공통</option>
	 	<option value="서울">서울</option>
	 	<option value="미술은행">미술은행</option>
	 	<option value="어린이박물관">어린이박물관</option>
	 	</select></td>
	 	</tr>
	 	<tr>
	 	<td colspan="5"><textarea rows="20" cols="70" name="content"></textarea>
	 	</td>
	 	</tr>
	 	</table>
	 	<!-- 버튼 -->
	 	<button type="button" onclick="location.href='notice_list.do'">등록</button>
	 	<button type="button" onclick="location.href='notice_list.do'">취소</button>
	 </form>

</body>
</html>