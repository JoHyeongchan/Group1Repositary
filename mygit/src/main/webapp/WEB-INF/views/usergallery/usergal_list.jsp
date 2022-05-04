<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/usergal/usergal_main_list.css">

<script type="text/javascript"></script>
</head>
<body>
	
	<jsp:include page="../header.jsp"></jsp:include>
	
	<hr> 
	<section>
		<h1>이용자갤러리</h1>
		<form id="colForm">
			<input type="text" placeholder="컬렉션명을 입력해주세요." id=searchBar name="searchtext">
			<button type="button" class=btnCalModal>
				<img src="#">
			</button>
			<button type="submit" onclick="" class="btnCollectionSearch">검색</button>
		</form>
		<hr>
		<table>
			<tr>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user1.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">[갤러리아미]셀피_작가의 자회상</span><br><small>mul-pu**@hanmail.net님
							갤러리<br> <span style="color:#888">조회수:55|좋아요:0</span>
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user2.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">봄이오는 소리</span><br> <small>comdms95**@gmail님 갤러리<br>
							<span style="color:#888">조회수:55|좋아요:0</span>
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user3.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">내가 좋아하는 작가님</span><br> <small>lethe**@korea.kr님
							갤러리<br> <span style="color:#888">조회수:142|좋아요:1</span>
						</small>
					</div>
				</td>
			
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user4.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">꽃길만걸어요</span><br> <small>lethe**@korea.kr님 갤러리<br>
							<span style="color:#888">조회수:90|좋아요:0</span>
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user5.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">[갤러리아미]셀피_작가의 자회상</span><br> <small>lethe**@korea.kr님
							갤러리<br> <span style="color:#888">조회수:126|좋아요:0</span>
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="http://localhost:9000/mygit/resources/images/usergal/user6.PNG" style="width: 200px; height: 200px;">
					</div> <br>
					<div class="itemInfo">
						<span class="itemTitle">달이 있는 풍경</span><br> <small>lethe**@korea.kr님
							갤러리<br> <span style="color:#888">조회수:127|좋아요:1</span>
						</small>
					</div>
				</td>
			</tr>
		</table>
		<div class="pageNum"> <!-- 페이지 번호 -->
			<span><b>1</b></span>
			&nbsp;&nbsp;&nbsp;
			<span>2</span>
		</div>
		<hr>
		<footer>
		</footer>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>