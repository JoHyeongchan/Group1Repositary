<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<style type="text/css"></style>
</head>
<body>
<header>
</header>

<section>
	<h2>Q&A</h2>
	<table border="1">

	<tr>
		<td colspan="3"><h2>[RE]: 제목1AAAAAAAAAAAAAAAAAAAAAAAA</h2>	
	 	<small>아이디:test | 등록일:2022-04-21</small> </td>
	 	<td><small>조회수:12</small></td>
	 </tr>

	<tr>
			<td colspan="4"><p>이것은 청춘의 끓는피다. 청눈의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고
			이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다. 사랑의 풀이 없으면 인간의 사막이다. 
			오아시스도 없는 사막이다. 보이는 끝까지 찾아다녀도 목숨이 </p></td>
	 </tr>
	 
	 <tr onclick="location.href='qna_content.do'" style="cursor:pointer;">
	 	 		<td  style="width:200px">이전글</td>
	 	 		<td colspan="4">제목2</td>
	 </tr>
	 <tr onclick="location.href='qna_content.do'" style="cursor:pointer;">
	 	 		<td>다음글</td>
	 	 		<td colspan="4">제목3</td>
	</tr>
	 </table>	 		

	 <div>
	 <button type="button" onclick="location.href='qna_update.do'">수정</button>
	 <button type="button" onclick="alert('삭제기능 구현 예정')">삭제</button>
	 <button type="button" onclick="location.href='qna_write.do'">답글</button>
	 <button type="button" onclick="location.href='qna_list.do'">목록</button>
	 </div>
	 
</section>

<footer>
</footer>
</body>
</html>