<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/online/online_colmov_info.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
<h1>이동훈 | 백목련 | 연도미상</h1>
<hr>
<div class="imgContentBox"><img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" height="400px" id="dispImg"></div>
<hr>
<div class="contentDescTable">
<table>
	<tr>
		<th>작가명</th><td>이동훈 LEE Donghoon</td>
	</tr>
	<tr>
		<th>작품명</th><td>백목련</td>
	</tr>
	<tr>
		<th>제작연도</th><td>연도미상</td>
	</tr>
	<tr>
		<th>재료</th><td>캔버스에 유채</td>
	</tr>
	<tr>
		<th>규격</th><td>45.5×37.5</td>
	</tr>
	<tr>
		<th>부문</th><td>회화</td>
	</tr>
	<tr>
		<th>관리번호</th><td>PA-01764</td>
	</tr>
	<tr>
		<th>전시상태</th><td><div class="dispIcon">비전시</div></td>
	</tr>
	
	<tr><td colspan="2"><hr></td></tr>
	
	<tr><td colspan="2"><p>이동훈(1903-1984)의 -백목련- 은 푸른 색조로 표현된 주변의 영향으로 활짝 만개한 목련의 자태가 더욱 청초해 보인다.
	불투명 색채로 매끈하게 처리된 화병과 배경이 주제를 돋보이게 하고 있다.</p></td></tr>
	
	<tr><td colspan="2"><hr></td></tr>
	
	<tr onclick="location.href='collectionInfo.do'" class="bottomTr"><td class="bottomBox">이전글</td><td><b>장미꽃</b></td></tr>
	<tr><td colspan="2"><hr></td></tr>
	
	<tr onclick="location.href='collectionInfo.do'" class="bottomTr"><td class="bottomBox">다음글</td><td><b>복숭아</b></td></tr>

	<tr><td colspan="2"><hr></td></tr>
</table>
</div>
	<button type="button" onclick="location.href='collectionList.do'" class="btnList">목록</button>
	<button type="button" onclick="location.href='collectionDelete.do'" class="btnList">삭제</button>
	<button type="button" onclick="location.href='collectionUpdate.do'" class="btnList">수정</button>	 
</section>	

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>