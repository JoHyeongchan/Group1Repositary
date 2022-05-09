<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/online/online_colmov_list.css">
<style>

.btnList{
	float:right;
	margin-right: 40px;
	height: 50px;
	color:white;
	background-color: black;
	border-radius: 25px;
	width: 150px; font-size: 20px;
}

#digitalForm{
	float:left;
	width: 45%;
}

#btnArea{
	float:right;
	width:45%;
	padding: 10px;
}

</style>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section>
		<h1>디지털동영상</h1>
		<div id="digitalForm">
		<form method="post">
			<input type="text" placeholder="검색어를 입력해주세요" id=searchBar name="searchtext">
			<button type="submit" onclick="" class="btnCollectionSearch">검색</button>						
		</form>
		</div>
		<div id="btnArea">
		<button class="btnList" onclick="location.href='digitalMovWrite.do'">등록</button>
		</div>
		
		<hr style="clear:both">
		<table>
			<tr>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv1.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo"> 
						<span class="itemCategory">오늘, 이 작품</span>
						<span class="itemTitle">[오늘, 이 작품] 빅토르 <br>바사렐리 | 게자 | 1983(short ver.)</span>
						<span class="itemDay">2022-05-02|조회수:29</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv2.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">오늘, 이 작품</span>
						<span class="itemTitle">[오늘, 이 작품] 빅토르 <br>바사렐리 | 게자 | 1983</span>
						<span class="itemDay">2022-05-02|조회수:29</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv3.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">작품 &amp; 작가</span>
						<span class="itemTitle">2022 국립현대미술관 미술은행 프로젝트 《공공》</span>
						<span class="itemDay">2022-04-29|조회수:679</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv4.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">큐레이터 전시 해설</span>
						<span class="itemTitle">국립현대미술관 큐레이터의 설명으로 보는 《미술로,세계로》</span>
						<span class="itemDay">2022-04-26|조회수:377</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv5.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">오늘, 이 작품</span>
						<span class="itemTitle">[오늘, 이 작품]도널드 저드 | 무제 | 1980년(short ver.)</span>
						<span class="itemDay">2022-05-02|조회수:37</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv6.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">오늘, 이 작품</span>
						<span class="itemTitle">[오늘, 이 작품]도널드 저드 | 무제 | 1980년</span>
						<span class="itemDay">2022-05-02|조회수:236</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv7.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">청소년</span>
						<span class="itemTitle">[청소년 온라인 워크숍]에듀케이터의 실험실 #라벨 #김지민</span>
						<span class="itemDay">2022-04-24|조회수:270</span>
					</div>
				</td>
				<td onclick="location.href='digitalMovInfo.do'"
					style="cursor: pointer" class="digitalMvBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/onlineMv/mv8.PNG" class="digitalMvImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemCategory">청소년</span>
						<span class="itemTitle">[청소년 온라인 워크숍]에듀케이터의 실험실 #일회용 컵 #성정원</span>
						<span class="itemDay">2022-04-24|조회수:11</span>
					</div>
				</td>
			</tr>
		</table>
		<div class="pageNum"> <!-- 페이지 번호 -->
			<span><b>1</b></span>
			&nbsp;&nbsp;&nbsp;
			<span>2</span>
			&nbsp;&nbsp;&nbsp;
			<span>3</span>
			&nbsp;&nbsp;&nbsp;
			<span>4</span>
			&nbsp;&nbsp;&nbsp;
			<span>5</span>
			&nbsp;&nbsp;&nbsp;
			<span>></span>
			&nbsp;&nbsp;&nbsp;
			<span>>></span>
			
		</div>
		<hr>
		
	</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>