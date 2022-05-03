<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../header.jsp"></jsp:include>

	<hr>
	<aside>
		<h1>봄이 오는 소리</h1>
		<p>봄이 느껴지는 작품을 모았습니다.</p>
		<br> 
		<button type="button">codms95**@gmail.com 갤러리</button>
		<small>조회수 78<br>|스크랩 * <br>|좋아요 ♡</small>
	</aside>
	<section>
		<h1>
			<span onclick="location.href='item_list.do'" style="cursor: pointer;">소장품</span>
			<span onclick="" style="cursor: pointer;">디지털미술관</span>
		</h1>
		<table>
			<tr>
				<td onclick="location.href='digigal_content.do'"
					style="cursor: pointer;">
						<img src="#" style="width: 250px; height: 250px">
				</td>
			</tr>
			<tr>
				<td>
					<p>[오늘, 이 작품]봄,과천|야외조각장</p>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td onclick="location.href='digigal_content.do'"
					style="cursor: pointer;">
						<img src="#" style="width: 250px; height: 250px">
				</td>
			</tr>
			<tr>
				<td>
					<p>[오늘, 이 작품]폴아이즈피리|정물,<br>1955|꽃, 연도미상</p>
				</td>
			</tr>
		</table><table>
			<tr>
				<td onclick="location.href='digigal_content.do'"
					style="cursor: pointer;">
						<img src="#" style="width: 250px; height: 250px">
				</td>
			</tr>
			<tr>
				<td>
					<p>[오늘, 이 작품]미술관에서 만난 꽃</p>
				</td>
			</tr>
		</table>
	</section>
	<hr>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>