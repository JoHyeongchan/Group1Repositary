<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/qna/qna_content.css">
<script type="text/javascript"></script>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<section>
	<h2>Q &amp; A</h2>
	<br><hr><br>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><span>[RE]: 제목1AAAAAAAAAAAAAA</span></td>
			<th>조회수</th>
		</tr>
		<tr>
			<td colspan="2"><small>작성자 : test &nbsp; | &nbsp; 등록일 : 2022-04-21</small></td>
			<td id="hits"><small>12</small></td>
		</tr>
		<tr>
			<td colspan="3">
				<p>이것은 청춘의 끓는피다. 청눈의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고
				이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다. 사랑의 풀이 없으면 인간의 사막이다. 
				오아시스도 없는 사막이다. 보이는 끝까지 찾아다녀도 목숨이
			</td>
	 	</tr>
	 	<tr onclick="location.href='qna_content.do'" style="cursor:pointer;">
	 	 	<th>이전글</th>
	 	 	<td colspan="2">제목2</td>
	 	</tr>
		 <tr onclick="location.href='qna_content.do'" style="cursor:pointer;">
		 	<th>다음글</th>
		 	<td colspan="2">제목3</td>
		</tr>
	 </table>
	 <br><br>
	 <div>
		 <button type="button" onclick="location.href='qna_update.do'">수정</button>
		 <button type="button" onclick="alert('삭제기능 구현 예정')">삭제</button>
		 <button type="button" onclick="location.href='qna_write.do'">답글</button>
		 <button type="button" onclick="location.href='qna_list.do'">목록</button>
	 </div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>