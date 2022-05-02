<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/comment/comment_content.css">
<body>

<jsp:include page="../header.jsp"></jsp:include>

<section>
	<h2>관람후기</h2>
	<table>

	<tr>
		<td colspan="3"><h2>[RE]: 제목1</h2>	
	 	<small>담당 : XX과 XXX | 등록일자 : 2022-05-01</small> </td>
	 	<td colspan="1" class="titleSub"><small>조회수:12</small></td>
	 </tr>
	<tr><td colspan="4"><hr></td></tr>
	<tr>
			<td colspan="4"><p class="contentBox">이것은 청춘의 끓는피다. 청눈의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고
			이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다. 사랑의 풀이 없으면 인간의 사막이다. 
			오아시스도 없는 사막이다. 보이는 끝까지 찾아다녀도 목숨이 </p></td>
	 </tr>
	 <tr><td colspan="4"><hr></td></tr>
	 <tr onclick="location.href='comment_content.do'" class="pageMove">
	 	 		<td  style="width:200px">이전글</td>
	 	 		<td colspan="4">제목2</td>
	 </tr>
	 <tr><td colspan="4"><hr></td></tr>
	 <tr onclick="location.href='comment_content.do'" class="pageMove">
	 	 		<td>다음글</td>
	 	 		<td colspan="4">제목3</td>
	</tr>
	<tr><td colspan="4"><hr></td></tr>
	 </table>	 		

	 <div>
	 <button type="button" onclick="location.href='comment_update.do'" class="btn_normal" style="float:left;">수정</button>
	 <button type="button" onclick="alert('삭제기능 구현 예정')" class="btn_normal" style="float:left;">삭제</button>
	 
	 <button type="button" onclick="location.href='comment_list.do'" class="btn_normal">목록</button>
	 </div>
	 
</section>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>