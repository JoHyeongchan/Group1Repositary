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
	
	<jsp:include page="../header.jsp"></jsp:include>
	
	<hr> 
	<section>
		<h1>이용자갤러리</h1>
		<form>
			<input type="text" placeholder="컬렉션명을 입력해주세요.">
			<button type="button">
				<img src="#">
			</button>
			<button type="submit">검색</button>
		</form>
		<hr>
		<table>
			<tr>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>[갤러리아미]셀피_작가의 자회상</span><br> <small>mul-pu**@hanmail.net님
							갤러리<br> 조회수:55|좋아요:0
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>봄이오는 소리</span><br> <small>comdms95**@gmail님 갤러리<br>
							조회수:55|좋아요:0
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>내가 좋아하는 작가님</span><br> <small>lethe**@korea.kr님
							갤러리<br> 조회수:142|좋아요:1
						</small>
					</div>
				</td>
			</tr>
			<tr>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>꽃길만걸어요</span><br> <small>lethe**@korea.kr님 갤러리<br>
							조회수:90|좋아요:0
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>[갤러리아미]셀피_작가의 자회상</span><br> <small>lethe**@korea.kr님
							갤러리<br> 조회수:126|좋아요:0
						</small>
					</div>
				</td>
				<td onclick="location.href='usergal/item_list.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <br>
					<div>
						<span>달이 있는 풍경</span><br> <small>lethe**@korea.kr님
							갤러리<br> 조회수:127|좋아요:1
						</small>
					</div>
				</td>
			</tr>
		</table>
		<div> <!-- 페이지 번호 -->
			<span>1</span>
			<span>2</span>
		</div>
		<hr>
		<footer>
		</footer>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>