<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0; padding: 0;}
	#nav{height:123px; border: 4px solid black;}
	li a{text-decoration: none; color: black;}
	li{float: left; list-style-type: none;}
	#nav_left{float: left; width: 350px;}
	#nav_center{width: 1080px; height: 90px; float : left; clear: right; padding-top: 25px; padding-left: 38px;}
	#nav_center a{font-weight: bold; font-size: 30pt;}
	#nav_right{width: 300px; height: 70px; float: right; padding-top: 55px;}
	#nav_right a{font-weight: bold; font-size: 15pt;}
	.nav_item1{padding: 62px; cursor: pointer;}
	.nav_item2{padding: 10px; cursor: pointer;}
</style>
</head>
<body>
	<div id = "nav">
		<div id="nav_left">
			<a href="http://localhost:9000/mygit/index.do" id="logo"><img src="resources/images/logo.png" width="80%" height="80%"></a>
		</div>
		<nav>
			<div id="nav_center">
			<ul>
				<li><a href="http://localhost:9000/mygit/comment_list.do" class="nav_item1">관람·참여</a></li>
				<li><a href="http://localhost:9000/mygit/off_now.do" class="nav_item1">전시</a></li>
				<li><a href="http://localhost:9000/mygit/on_show.do" class="nav_item1">디지털미술관</a></li>
				<li><a href="http://localhost:9000/mygit/reservation.do" class="nav_item1">예약</a></li>
			</ul>
			</div>
			<div id="nav_right">
			<ul>
				<li><a href="http://localhost:9000/mygit/login.do" class="nav_item2">로그인</a></li>
				<li><a href="http://localhost:9000/mygit/join.do" class="nav_item2">회원가입</a></li>
				<li><a href="#" class="nav_item2">사이트맵</a></li>
			</ul>
			</div>
		</nav>
	</div>
</body>
</html>