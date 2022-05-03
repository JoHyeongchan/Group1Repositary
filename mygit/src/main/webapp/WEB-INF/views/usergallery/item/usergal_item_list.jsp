<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/usergal/usergal_detail_list.css">
<script src="http://localhost:9000/mycgv/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#itemList").css("border-bottom","2px black solid");
		$("#digigalList").css("color","#eee");
	});
	
</script>
</head>

<body>
	<jsp:include page="../../header.jsp"></jsp:include>
<div id="middle">
<aside>
<h2 id="usergallTitle">봄이 오는 소리</h2>
<p id="usergalDesc">봄이 느껴지는 작품을 모았습니다.</p><br>
<button type="button" class="btnEmail">codms95**@gmail.com 갤러리</button><br>
<small>조회수 78 | 스크랩 * | 좋아요 ♡</small>
</aside>

<section>
<h2><span onclick="" class="subMenu" id="itemList">소장품</span>
<span onclick="location.href='digigal_list.do'" class="subMenu" id="digigalList">디지털미술관</span></h2>
<table>
	<tr align="center">
	<td onclick="location.href='item_content.do'" class="itemBox">
	<div align="center" class="itemImg"><img src="#" style="width:250px; height:250px"></div>
	<div class="itemDesc">봄 풍경<br>오지호</div>
	</td>
	<td onclick="location.href='item_content.do'" class="itemBox">
	<div align="center" class="itemImg"><img src="#" style="width:250px; height:250px"></div>
	<div class="itemDesc">효자리 살구꽃<br>이동훈</div>
	</td>
	<td onclick="location.href='item_content.do'" class="itemBox">
	<div align="center" class="itemImg"><img src="#" style="width:250px; height:250px"></div>
	<div class="itemDesc">꽃을 든 여인<br>천경자</div>
	</td>
	</tr>
	<tr><td colspan="3"><hr></td></tr>
</table>
</section>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>