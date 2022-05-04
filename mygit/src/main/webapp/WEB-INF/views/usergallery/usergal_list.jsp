<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/usergal/usergal_main_list.css">
<!-- <style type="text/css">
h1{
	margin: 25px;
	text-indent: 20px;
	font-size: 35px;
}

form{
	margin: 10px;
}

#searchBar{
	margin: 5px;
	margin-left: 20px;
}

.pageNum{
	
	clear:both;
	text-align: center;
	height:50px;
}

section{

	width: 90%;
	margin: 5%;
}

table{
	margin: 0 auto;
	margin-top: 30px;
	overflow: hidden;
}

td{
	display: inline-block;
	width: 30%;
	min-width: 300px;
	margin-left: 15px;
	margin-right: 15px;
	height: 400px;
}

#searchBar{
	width: 300px;
	height: 50px;
	
	border-style: none;
	border-radius: 25px;
	background-color: lightgray;
	
	padding-left: 20px;
	 font-size: 15px; 
}
	
.btnCollectionSearch{
margin-left: 10px;
height: 50px;
color:white;
background-color: black;
border-radius: 25px;
width: 150px; font-size: 20px; 
}

.btnCalModal{
margin-left: 10px;
height: 50px;
color: white;
background-color: gray;
border-radius: 25px;
width: 50px;
border-style: none;

}

#colForm{
	margin: 15px;
	padding: 10px;
	overflow: hidden;
}

.itemTitle{
	
	font-size: 18px;
	text-indent: 10px;
}

.itemInfo{
	padding-left: 10%;
	font-weight: bolder;
}

</style> -->
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
						<img src="#" style="width: 200px; height: 200px;">
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
						<img src="#" style="width: 200px; height: 200px;">
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
						<img src="#" style="width: 200px; height: 200px;">
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
						<img src="#" style="width: 200px; height: 200px;">
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
						<img src="#" style="width: 200px; height: 200px;">
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
						<img src="#" style="width: 200px; height: 200px;">
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