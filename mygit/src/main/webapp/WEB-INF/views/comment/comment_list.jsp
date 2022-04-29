<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section>
<h2>관람후기</h2>
<h4>관람후기를 올려주세요</h4>
<hr>
<!-- 테이블 -->
<table border="1">
	<!--  테이블 1번째줄 -->
	<tr>
		<th>번호</th><th>제목</th><th>전시명</th><th>작성자</th><th>등록일</th><th>조회수</th>
	</tr>
	<!--  Dummy Content -->
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>	
	<tr>
		<td>1</td><td><a href="notice_content.do">test1</a><td>전시명</td><td>ID/test</td><td>2022-05-01</td><td>views</td>
	</tr>
</table>

<!-- 검색 입력폼 -->
<form>
<select>
	<option value="title">제목</option>
	<option value="content">본문</option>
	<option value="userid">작성자</option>
</select>
<input type="text" value="내용을 입력해주세요" name="searchText" onclick="this.value=''"></input>
<button type="submit">검색</button>

<!-- 글 작성 화면 이동 -->
<button type="button" onclick="location.href='comment_write.do'">등록</button>
</form>
<!-- 페이지 표시 부분 -->
<div> <<&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;>></div>
</section>

</body>
</html>