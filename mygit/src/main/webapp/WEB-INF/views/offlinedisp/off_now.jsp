<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
	</nav>
	<hr>
	<section>
			<h1>현재전시</h1>
			<form>
				<input type="text" placeholder="작품명 또는 작가명을 검색해주세요.">
				<button type="submit">검색</button>
			</form>
			<hr>
			<!-- 카테고리 버튼 -->
			<span>전체</span>
			<span>전시</span>
			<span>필름앤비디오</span>
			<span>다원예술</span>
			<span>해외전시</span><br> 
			<table><!-- 컨텐츠목록 -->
			<tr>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>가면무도회</span><br>
						<small>2022-04-13~2022-07-31<br>
						<img alt="" src="">오디오가이드
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>나너의 기억</span><br>
						<small>2022-04-8~2022-08-07<br>
						<img alt="" src="">오디오가이드
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>MMCA 국제미술 소장품 기획전《미술로,세계로》</span><br>
						<small>2022-01-20~2022-06-12<br>
						<img alt="" src="">오디오가이드
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>MMCA 과천프로젝트2021:예술버스쉼터_쓸모없는 건축과 유용한 조각에 대하여</span><br>
						<small>2021-12-15~2022-11-20
						</small>
					</div>
				</td>
			</tr>
			<tr>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>원형정원 프로젝트:달뿌리-느리고 빠른 대화</span><br>
						<small>2021-10-08~2023-12-17
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>MMCA 청주프로젝트 2021《천대광:집우집주》</span><br>
						<small>2021-09-17~2022-07-24
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>MMCA 이건희컬렉션 특별전:한국미술명작</span><br>
						<small>2021-07-21~2022-06-06<br>
						<img alt="" src="">오디오가이드
						</small>
					</div>
				</td>
				<td onclick="location.href='off_content_no.do'"
					style="cursor: pointer">
					<div align="center">
						<img src="#" style="width: 200px; height: 200px;">
					</div> <hr>
					<div>
						<span>너랑 나랑__</span><br>
						<small>2021-05-04~2022-12-11
						</small>
					</div>
				</td>
			</tr>
		</table>
		<div> <!-- 페이지 번호 -->
			<span>1</span>
			<span>2</span>
			<span>3</span>
		</div>
		<div><!-- 맨 위로 버튼 -->
			<img alt="" src="">
		</div>
		<footer>
		</footer>
	</section>
</body>
</html>