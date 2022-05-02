<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/comment/comment_write_update.css">
</head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>
<section>
<form>
		<h2>관람후기</h2>
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
	 	<td><span class="inputLabel">전시선택</span></td>
	 	<td>
	 	<select>
	 	<option value="1910년대~1920년대">온라인) 국립현대미술관 소장품(1910년대~1920년대)</option>
	 	<option value="1930년대~1940년대">온라인) 국립현대미술관 소장품(1930년대~1940년대)</option>
	 	<option value="1950년대~1960년대">온라인) 국립현대미술관 소장품(1950년대~1960년대)</option>
	 	<option value="1970년대~1980년대">온라인) 국립현대미술관 소장품(1970년대~1980년대)</option>
	 	<option value="1990년대">온라인) 국립현대미술관 소장품(1990년대)</option>
	 	<option value="2000년대">온라인) 국립현대미술관 소장품(2000년대)</option>
	 	<option value="2010년대">온라인) 국립현대미술관 소장품(2010년대)</option>
	 	<option value="가면무도회">오프라인) 가면무도회</option>
	 	<option value="나너의 기억">오프라인) 나너의 기억</option>
	 	<option value="미술로, 세계로">오프라인) 미술로, 세계로</option>
	 	<option value="funtion">오프라인) funtion</option>
	 	<option value="달뿌리">오프라인) 달뿌리-느리고 빠른 대화</option>
	 	<option value="집우지주">오프라인) 집우지주</option>
	 	<option value="이건희컬렉션 특별전">오프라인) 이건희컬렉션 특별전</option>
	 	<option value="너랑 나랑">오프라인) 너랑 나랑</option>
	 	</select></td>
	 	</tr>
	 	
	 	<tr>
	 	<td colspan="5"><hr></td>
	 	</tr>
	 	
	 	<tr>
	 	<td colspan="5" align="center"><textarea rows="20" cols="70"></textarea>
	 	</td>
	 	</tr>
	 	</table>
	 	<!-- 버튼 -->
	 	<button type="button" onclick="location.href='comment_content.do'" class="btn_normal">취소</button>
	 	<button type="button" onclick="location.href='comment_list.do'" class="btn_normal">수정</button>
	 </form>
</section>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>