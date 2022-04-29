<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/qna/qna_list.css">
<script type="text/javascript"></script>
</head>
<body>

<header>
<!-- 추후 헤더.jsp  include 적용 -->
</header>

<section>
<h2>Q &amp; A</h2>
<br><hr><br>
<!-- 글 작성 화면 이동 -->
	<button type="button" onclick="location.href='qna_write.do'" id="list_write">등록</button>
	<br><br>
	<!-- 테이블 -->
	<table border="1">
		<!--  테이블 1번째줄 -->
		<tr>
			<th>No.</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
		</tr>
		<!--  Dummy Content -->
		<tr>
			<td>25</td><td><a href="qna_content.do">test1</a></td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>24</td><td>test2</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>23</td><td>test3</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>22</td><td>test4</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>21</td><td>test5</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>20</td><td>test6</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>19</td><td>test7</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>18</td><td>test8</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>17</td><td>test9</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
		<tr>
			<td>16</td><td>test10</td><td>dummy</td><td>2022-05-01</td><td>10</td>
		</tr>
	</table>
	<br>
<!-- 페이지 표시 부분 -->
<div> &lt;&lt;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;>></div>
<br>
<!-- 검색 입력폼 -->
<form>
	<select>
		<option value="title">제목</option>
		<option value="content">본문</option>
		<option value="userid">작성자</option>
	</select>
	<input type="text" value="내용을 입력해주세요" name="searchText" onclick="this.value=''"></input>
	<button type="submit">검색</button>
</form>
</section>

<footer>
<!-- 추후 footer.jsp include -->
</footer>

</body>
</html>