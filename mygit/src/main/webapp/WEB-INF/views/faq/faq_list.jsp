<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 슬라이드 기능 확인용 임시 CSS -->
<style type="text/css">
	.faqTitle{
		cursor:pointer;
	}

	.faqContent{
	display:none;
	}
	
	ul{
		display:block;
		list-style-type: none;
	}
	
	li{
		border:1px black solid;
	}
</style>

<script src="http://localhost:9000/mycgv/resources/js/jquery-3.6.0.min.js"></script>
<script>
	//제목 클릭시 슬라이드 기능 구현
	$(document).ready(function (){
		
		$(".faqTitle").click(function(){
			
			$(this).find(".faqContent").slideToggle("fast");
			$(".faqTitle").not(this).find(".faqContent").slideUp("fast");
		});
		
	});	
</script>
</head>
<body>
<section>
<table border="1">

<tr>
	<td><h2>FAQ</h2></td>
	<td><button type="button" onclick="location.href='faq_write.do'">등록</button></td>
</tr>

<tr>
	<td><span><a href="faq_list.do">관람</span> | <span><a href="faq_list.do"> 예약 </span> 
	| <span><a href="faq_list.do"> 홈페이지 </span> | <span><a href="faq_list.do"> 기타 </span></td>
	<td><span><a href="qna_list.do"> Q & A >></a> </span></td>
</tr>

<tr>
	<td colspan="2">
		<ul>
			<li class="faqTitle"><span>제목1</span>
			<div class="faqContent">AAAAA<br>
			<button type="button" onclick="location.href='faq_update.do'">수정</button>
			<button>삭제</button>
			</div></li>
			<li class="faqTitle"><span>제목2</span>
			<div class="faqContent">BBBBB<br>
			<button type="button" onclick="location.href='faq_update.do'">수정</button>
			<button>삭제</button>
			</div></li>
			<li class="faqTitle"><span>제목3</span>
			<div class="faqContent">CCCCC<br>
			<button type="button" onclick="location.href='faq_update.do'">수정</button>
			<button>삭제</button>
			</div></li>
			<li class="faqTitle"><span>제목4</span>
			<div class="faqContent">DDDDD<br>
			<button type="button" onclick="location.href='faq_update.do'">수정</button>
			<button>삭제</button>
			</div></li>
			<li class="faqTitle"><span>제목5</span>
			<div class="faqContent">EEEEEE<br>
			<button type="button" onclick="location.href='faq_update.do'">수정</button>
			<button>삭제</button>
			</div></li>
		</ul>
	</td>
</tr>
</table>
</section>
</body>
</html>