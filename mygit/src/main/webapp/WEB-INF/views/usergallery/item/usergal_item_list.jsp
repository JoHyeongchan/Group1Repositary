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

	<jsp:include page="../../header.jsp"></jsp:include>

<aside>
<h2>봄이 오는 소리</h2>
<p>봄이 느껴지는 작품을 모았습니다.</p><br>
<button type="button">codms95**@gmail.com 갤러리</button>
<small>조회수 78|스크랩 * |좋아요 ♡</small>
</aside>
<section>
<h2><span onclick="" style="cursor: pointer;">소장품</span>&nbsp;&nbsp;
<span onclick="location.href='digigal_list.do'" style="cursor: pointer;">디지털미술관</span></h2>
<table>
	<tr>
	<td onclick="location.href='item_content.do'" style="cursor: pointer;">
	<div align="center"><img src="#" style="width:250px; height:250px"></div>
	<div align="center">봄 풍경<br>오지호</div>
	</td>
	<td onclick="location.href='item_content.do'" style="cursor: pointer;">
	<div align="center"><img src="#" style="width:250px; height:250px"></div>
	<div align="center">효자리 살구꽃<br>이동훈</div>
	</td>
	<td onclick="location.href='item_content.do'" style="cursor: pointer;">
	<div align="center"><img src="#" style="width:250px; height:250px"></div>
	<div align="center">꽃을 든 여인<br>천경자</div>
	</td>
	</tr>
</table>
</section>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>