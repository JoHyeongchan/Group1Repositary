<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$(".nav_center").mouseenter(function() {
			$(this).find('.nav_content').slideDown(500);
		});
		$(".nav_center").mouseleave(function() {
			$(this).find('.nav_content').slideUp(300);
		});
	});
	
</script>
<style type="text/css">
	*{margin: 0; padding: 0;}
	#nav{height:100px; border: 4px solid black; overflow: hidden; z-index: 5;}
	li>a{text-decoration: none; color: black;}
	li{float: left; list-style-type: none;}
	#nav_left{float: left; width: 350px;margin-top: -10px;}
	ul>li>a{font-weight: bold; font-size: 30pt; cursor: pointer;}
	ul>li>div{display: none; position: absolute; font-size: 25pt;}
	.nav_content>a{display: block; margin-top: 10px; margin-bottom: 10px; cursor: pointer; color: gray;}
	.nav_content>a:hover {text-decoration:underline;}
	.nav_center{padding-left: 60px; padding-right: 50px; padding-top: 20px;}
	#nav_right{width: 300px; height: 70px; float: right; padding-top: 55px;}
	#nav_right a{font-weight: bold; font-size: 15pt;}
	.nav_item2{padding: 10px; cursor: pointer;}
	.nav_content{ background-color: white;}
</style>
</head>
<body>
<header>
	<div id = "nav">
		<div id="nav_left">
			<a href="http://localhost:9000/mygit/index.do" id="logo"><img src="http://localhost:9000/mygit/resources/images/logo.png" width="80%" height="80%"></a>
		</div>
		<nav>
			<div>
				<ul>
					<li class="nav_center">
						<a>관람·참여</a>
						<div class="nav_content"><a>관람</a><a>참여</a><a>이벤트</a></div>
					</li>
					<li class="nav_center">
						<a>전시</a>
						<div class="nav_content"><a>현재전시</a><a>예정전시</a><a>과거전시</a></div>
					</li>
					<li class="nav_center">
						<a>디지털미술관</a>
						<div class="nav_content"><a>맞춤검색</a><a>이용자갤러리</a></div>
					</li>
					<li class="nav_center">
						<a>예약</a>
						<div class="nav_content"><a>예약하기</a><a>예약확인</a></div>
					</li>
				</ul>
			</div>
			<div id="nav_right">
				<ul>
					<li><a href="http://localhost:9000/mygit/login.do" class="nav_item2">로그인</a></li>
					<li><a href="http://localhost:9000/mygit/join.do" class="nav_item2">회원가입</a></li>
					<li><a href="http://localhost:9000/mygit/sitemap.do" class="nav_item2">사이트맵</a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>
</body>
</html>