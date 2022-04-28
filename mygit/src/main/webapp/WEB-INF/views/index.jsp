<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0px; padding: 0px;}
	#museum{width: 1900px; height: 800px;}
	#mmca{width: 690px; height: 200px; background: #007843;left: 40px; top: -100px; position: relative;
		  text-align: center; font-size: 65pt; }
	#info_detail{text-decoration: underline;}
	#info{width: 700px; float: right;}
	.info1{font-size: 30pt;}
	.info2{font-size: 15pt;}
	th{font-size: 25pt; font-weight: bold;}
	tr{text-align: center;}
	.up1{height: 500px;}
	.up2{width: 1300px; margin: 0 auto;}
	table td{width: 400px;}
	.td1{vertical-align: middle;}
	.td2{text-align: center; font-size: 15pt; font-weight: bold; height: 50px;}
	.line{width: 270px; margin: 0 auto;}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<a><img src="resources/images/index.png" id="museum"></a>
	<div id = mmca>국립현대미술관</div>
	<div class=up1>
		<div id="info">
			<p class="info1"><b>환영합니다.</b></p>
			<p class="info2">국립현대미술관은 개관 반세기의 역사를 자랑하는 국내 유일의 국가현대미술관입니다.
			우리 미술관은 서울관, 과천관, 덕수궁관, 청주관의 4관 체제에서 이제 대전관 신설로 5관 체제로 진입하고 있습니다.
			우리 미술관은 ‘확장과 연결’로 열린 미술관을 지향하고 있습니다. 생활 속에서 삶의 질을 높이고, 감동과 상상력의 충전소로 거듭 나기를 노력하고 있습니다. 더불어 이건희컬렉션의 대량기증으로 소장품 1만점 시대에 진입했고, 보다 다양한 전시와 미술관 프로젝트로 국민의 곁에 늘 있기를 희망하고 있습니다. 거기다 미술한류 사업에도 박차를 가해 세계 속에서 한국현대미술의 존재감을 높이고자 합니다.
			국립현대미술관은 항상 여러분의 곁에 있습니다. 언제라도 방문하셔서 다양한 프로그램을 즐기시기를 바랍니다. 바로 이웃과 같은 친근하고 포근한 열린 미술관이기 때문입니다.
			개방적이고도 신바람 나는 미술관, 그러면서도 감동을 주는 미술관으로 여러분을 초대합니다. 함께하시는 여러분! 감사합니다.</p>
			<a href="#" id="info_detail">자세히 보기1</a>
		</div>
	</div>
	<div class=up2>
		<table>
			<thead>
				<th>오프라인 전시회</th>
			</thead>
			<tr class=td1>
				<td><a href="#"><img src="resources/images/modern1.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern2.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern3.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern4.PNG" width="250px" height="330px"></a></td>
			</tr>
			<tr class=td2>
				<td><br>가면무도회<br><hr class="line"><br><br></td>
				<td><br>나너의 기억<br><hr class="line"><br><br></td>
				<td><br>미술로, 세계로<br><hr class="line"><br><br></td>
				<td><br>function<br><hr class="line"><br><br></td>
			</tr>
			<tr class=td1>
				<td><a href="#"><img src="resources/images/modern5.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern6.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern7.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/modern8.PNG" width="250px" height="330px"></a></td>
			</tr>
			<tr class=td2>
				<td><br>달뿌리-느리고 빠른 대화<br><hr class="line"><br><br></td>
				<td><br>집우지주<br><hr class="line"><br><br></td>
				<td><br>이건희컬렉션 특별전<br><hr class="line"><br><br></td>
				<td><br>너랑 나랑<br><hr class="line"><br><br></td>
			</tr>
		</table>
		<br>
		<br>
		<br>
		<table>
			<thead>
				<th>온라인 전시회</th>
			</thead>
			<tr class=td1>
				<td><a href="#"><img src="resources/images/sojang1.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/sojang2.png" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/sojang3.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/sojang4.png" width="250px" height="330px"></a></td>
			</tr>
			<tr class=td2>
				<td><br>국립현대미술관 소장품 300<br>(1910년대~1920년대)<hr class="line"><br><br></td>
				<td><br>국립현대미술관 소장품 300<br>(1930년대~1940년대)<br><hr class="line"><br><br></td>
				<td><br>국립현대미술관 소장품 300<br>(1950년대~1960년대)<br><hr class="line"><br><br></td>
				<td><br>국립현대미술관 소장품 300<br>(1970년대~1980년대)<br> <hr class="line"><br><br></td>
			</tr>
			<tr class=td1>
				<td><a href="#"><img src="resources/images/sojang5.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/sojang6.PNG" width="250px" height="330px"></a></td>
				<td><a href="#"><img src="resources/images/sojang7.png" width="250px" height="330px"></a></td>
			</tr>
			<tr class=td2>
				<td><br>국립현대미술관 소장품 300<br>(1990년대)<br><hr class="line"><br><br></td>
				<td><br>국립현대미술관 소장품 300<br>(2000년대)<br><hr class="line"><br><br></td>
				<td><br>국립현대미술관 소장품 300<br>(2010년대)<br><hr class="line"><br><br></td>
			</tr>
		</table>
	</div>
</body>
</html>