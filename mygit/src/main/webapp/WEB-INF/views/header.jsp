<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<script src='//cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js'></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		/* 관람/참여 */
		$("#notice").mouseenter($.throttle(1000,function() {
			$(this).find('.nav_content').slideDown(500);
			$('.nava').css("color","#bbb");
			$('#noticea').css("color","#000");
		}));
		$(".nav_center").mouseleave(function() {
			$('.nava').css("color","#000");
			$(this).find('.nav_content').slideUp(300);
		});
		/* 전시 */
		$("#exhibit").mouseenter($.throttle(1000,function() {
			$(this).find('.nav_content').slideDown(500);
			$('.nava').css("color","#bbb");
			$('#exhibita').css("color","#000");
		}));
		$(".nav_center").mouseleave(function() {
			$('.nava').css("color","#000");
			$(this).find('.nav_content').slideUp(300);
		});
		/* 디지털미술관 */
		$("#digit").mouseenter($.throttle(1000,function() {
			$(this).find('.nav_content').slideDown(500);
			$('.nava').css("color","#bbb");
			$('#digita').css("color","#000");
		}));
		$(".nav_center").mouseleave(function() {
			$('.nava').css("color","#000");
			$(this).find('.nav_content').slideUp(150);
		});
		/* 예약 */
		$("#reserve").mouseenter($.throttle(1000,function() {
			$(this).find('.nav_content').slideDown(500);
			$('.nava').css("color","#bbb");
			$('#reservea').css("color","#000");
		}));
		$(".nav_center").mouseleave(function() {
			$('.nava').css("color","#000");
			$(this).find('.nav_content').slideUp(200);
		});
		
		/* 로그인 관련 */
		var login_result = "${login_result}";
		if(login_result=="succ") {
			alert("로그인 성공");
		}
		var logout_result = "${logout_result}";
		if(logout_result=="succ") {
			alert("로그아웃 성공");
		}
	});
	
</script>
<style type="text/css">
	*{
	margin: 0; padding: 0;
	}
	
	#nav{
	border-bottom: 1px solid #000/* border: 4px solid black */; 
	display: flex; justify-content: space-between;
	}
	
	li>a{
	text-decoration: none; color: black;
	}
	
	.nav_content>a{
	text-decoration: none;
	}
	
	li{
	float: left; list-style-type: none;
	}
	
	#nav_left{
	float: left; width: 350px;margin-top: -10px;
	}
	
	ul>li>a{
	font-weight: bold; font-size: 30pt; cursor: pointer;
	}
	
	.nav_center li{
	padding: 15px 20px;
	}
	
	
	@media screen and (max-width: 768px){
		#nav{
			flex-direction: column;
			
		}
		
		.nav_center{
			flex-direction: column;
			align-items: center;
			width: 100%;
		}
	}
	

	ul>li>div{display: none; position: absolute; font-size: 25pt;}
	.nav_content>a{display: block; margin-top: 10px; margin-bottom: 10px; cursor: pointer; color: gray;}
	.nav_content>a:hover {background-color: #2C2C2C; color: white;}

	ul>li>div{display: none; position: absolute; font-size: 25pt;background-color: #fff;}
/* 	#test{display: none;position: absolute;top:100px;height:100px; font-size: 25pt;background-color: #fff;bolder-bottom:2px solid black;width: 100%;} */
	.nav_content>a{display: block;padding: 10px 0;/*  margin-top: 10px; margin-bottom: 10px */; cursor: pointer; color: #000/* gray */;}
	.nav_content>a:hover {text-decoration:underline;}

	.nav_center{padding-left: 60px; padding-right: 50px; padding-top: 20px;}
	#nav_right{width: 300px; height: 70px; float: right; padding-top: 55px;}
	#nav_right a{font-weight: bold; font-size: 15pt;}
	.nav_item2{padding: 10px; cursor: pointer;}

	.nav_content{ background-color: #3E3E3E; width: 200px;}

	.nav_content{ background-color: white;}
	.clearfix::before, .clearfix::after {content: " ";display: table;}
	.clearfix::after {clear: both;}


</style>
</head>
<body>
<header>
	<nav id = "nav">
		<div id="nav_left">
			<a href="http://localhost:9000/mygit/index.do" id="logo"><img src="http://localhost:9000/mygit/resources/images/logo.png" width="260px" height="120px"></a>
		</div>

		<nav>
			<div>
				<ul>
					<li class="nav_center" id="notice">
						<a class="nava" id="noticea" href="/mygit/comment_list.do">관람·참여</a>
						<div class="nav_content">
						<a href="/mygit/notice_list.do">공지</a>
						<a href="/mygit/comment_list.do">관람후기</a>
						<a href="/mygit/faq_list.do">FAQ</a>
						<a href="/mygit/qna_list.do?rpage=1">Q&A</a>
						</div>
					</li>
					<li class="nav_center" id="exhibit">
						<a class="nava" id="exhibita" href="/mygit/off_now.do">전시</a>
						<div class="nav_content">
						<a href="/mygit/off_now.do">현재전시</a>
						<a href="/mygit/off_future.do">예정전시</a>
						<a href="/mygit/off_past.do">과거전시</a>
						</div>
					</li>
					<li class="nav_center" id="digit">
						<a class="nava" id="digita" href="/mygit/online/on_show.do">디지털미술관</a>
						<div class="nav_content">
						<a href="/mygit/online/on_show.do">온라인전시</a>
						<a href="/mygit/online/collectionList.do?rpage=1">소장품</a>
						<a href="/mygit/online/digitalMovList.do?rpage=1">온라인컨텐츠</a>
						<a href="/mygit/usergal/usergal_list.do">이용자갤러리</a>
						</div>
					</li>
					<li class="nav_center" id="reserve">
						<a class="nava" id="reservea" href="/mygit/reservation.do">예약</a>
						<div class="nav_content">
						<a href="/mygit/reservation.do">예약하기</a>
						</div>
					</li>
				</ul>
			</div>
			<div id="nav_right">
				<c:choose>
				<c:when test="${sessionScope.id != null }">
				<ul>
					<li><a href="#" class="nav_item2">${sessionScope.id }</a></li>
					<li><a href="http://localhost:9000/mygit/logout.do" class="nav_item2">로그아웃</a></li>
					<li><a href="http://localhost:9000/mygit/sitemap.do" class="nav_item2">사이트맵</a></li>
				</ul>
				</c:when>
				<c:when test="${sessionScope.id == 'admin' }">
				<ul>
					<li><a href="http://localhost:9000/mygit/logout.do" class="nav_item2">로그아웃</a></li>
					<li><a href="http://localhost:9000/mygit/sitemap.do" class="nav_item2">사이트맵</a></li>
					<li><a href="http://localhost:9000/mygit/admin/admin.do" class="nav_item2">Admin</a></li>
				</ul>
				</c:when>
				<c:otherwise>
				<ul>
					<li><a href="http://localhost:9000/mygit/login.do" class="nav_item2">로그인</a></li>
					<li><a href="http://localhost:9000/mygit/join.do" class="nav_item2">회원가입</a></li>
					<li><a href="http://localhost:9000/mygit/sitemap.do" class="nav_item2">사이트맵</a></li>
				</ul>
				</c:otherwise>
				</c:choose>
			</div>
		</nav>
	</nav>

</header>
</body>
</html>