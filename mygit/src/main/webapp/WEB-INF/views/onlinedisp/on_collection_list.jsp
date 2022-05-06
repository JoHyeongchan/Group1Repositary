<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/online/online_colmov_list.css">

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
		<h1>소장품</h1>
		<form id="colForm">
			<input type="text" placeholder="검색어를 입력해주세요" id=searchBar name="searchtext">
			<button type="submit" onclick="" class="btnCollectionSearch">검색</button>
		</form>
		<hr>
		<table>
			<tr>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer"  class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user1.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">김익영<br>KIM Yik-yung</span>
						<span class="itemTitle">사면사발</span>
						<span class="itemYear">1964년경</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">김익영<br>KIM Yik-yung</span>
						<span class="itemTitle">사면사발</span>
						<span class="itemYear">1964년경</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">제3회 개인전 출품작</span>
						<span class="itemYear">1961</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">가정생활 5월호 표지</span>
						<span class="itemYear">1963</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">디자인</span>
						<span class="itemYear">1953</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user6.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">산업미술전 포스터</span>
						<span class="itemYear">1960</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">인삼 수출 포스터</span>
						<span class="itemYear">1972</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">경주</span>
						<span class="itemYear">1950년대</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">산과 학</span>
						<span class="itemYear">1970년대</span>
					</div>
				</td>
				<td onclick="location.href='collectionInfo.do'"
					style="cursor: pointer" class="digitalColBox">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">한홍택<br>HAN Hongtaik</span>
						<span class="itemTitle">관광포스터</span>
						<span class="itemYear">1960년대</span>
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