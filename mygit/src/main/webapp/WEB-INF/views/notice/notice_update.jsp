<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	 	<tr>
	 	<td><span>제목</span></td>
	 	<td colspan="3"><input type="text" name="title" value="제목을 입력하세요."></td>
	 	</tr>
	 	<tr>
	 	<td><span>첨부파일</span></td>
	 	<td colspan="3"><input type="file" name="file1"></td>
	 	</tr>
	 	<tr>
	 	<td colspan="4"><textarea rows="20" cols="70"></textarea>
	 	</td>
	 	</tr>
	 	</table>
	 	<!-- 버튼 -->
	 	<button type="button" onclick="location.href='notice_list.do'">등록</button>
	 	<button type="button" onclick="location.href='notice_content.do'">취소</button>
	 </form>
</body>
</html>