<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="http://localhost:9000/mygit/resources/js/reservation.js"></script>
<link rel="stylesheet" href="http://localhost:9000/mygit/resources/css/reservation.css"></link>
</head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>
	<br><br>
	<section>
		<div id="list">
			<div class="show_info">
				<img src="http://localhost:9000/mygit/resources/images/poster_1.jpg" class="show_poster">
				<p class="show_title">[서울] 통합전시 (이건희컬렉션 제외)</p><br>
				<p class="show_desc">
					월, 화,목,금,일 10:00 ~ 18:00<br>
					수, 토 야간개장 10:00 ~ 21:00<br>
					유료(4,000원)<br>
					수/토 야간개장시 18시이후 무료
				</p>
				<span class="open_close">예약중</span>
			</div>
			<div class="show_info">
				<img src="http://localhost:9000/mygit/resources/images/poster_2.jpg" class="show_poster">
				<p class="show_title">아티스트 토크: 히토 슈타이얼</p><br>
				<p class="show_desc">
					2022. 4. 29. (금) 14:00-16:00(입장 마감 14:00)<br>
					2022. 4. 29. (금) 14:00-16:00<br>
					180명/회<br>
					무료
				</p>
				<span class="open_close">예약중</span>
			</div>
			<div class="show_info">
				<img src="http://localhost:9000/mygit/resources/images/poster_3.jpg" class="show_poster">
				<p class="show_title">Title Sample2</p><br>
				<p class="show_desc">
					상시운영(월요일 휴관)<br>
					화~일: 10:00 ~ 18:00<br>
					제한없음<br>
					무료
				</p>
				<span class="open_close">예약중</span>
			</div>
		</div>
		<div id="reserve_menu">
			<form action="#">
				<input type="text" name="rtitle" hidden="hidden">
				<h3 id="reserve_h3">예약</h3>
				<div class="reserve_menu_item1">방문 일자 &nbsp;&nbsp;&nbsp;<input type="date" name="rdate"></div>
				<div class="reserve_menu_item1" id="reserve_time">방문 시각</div>
				<section id='reserve_time_box'>
					<label><input type='radio' name='rtime' value='10:00 ~ 12:00'>10:00 ~ 12:00</label><br>
					<label><input type='radio' name='rtime' value='13:00 ~ 18:00'>13:00 ~ 18:00</label>
				</section>
				<div class="reserve_menu_item1" id="rn">
					방문 인원 &nbsp;&nbsp;&nbsp;<input type="number" name="rnumber">
				</div>
				<div id="confirm">
					<input type="button" id="reserve_confirm" value="예약 확정">
				</div>
			</form>
		</div>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>