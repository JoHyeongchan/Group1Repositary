<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 슬라이드 기능 확인용 임시 CSS -->
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/faq/faq_list.css"></link> 
<script src="http://localhost:9000/mycgv/resources/js/jquery-3.6.0.min.js"></script>
<script>
	
	$(document).ready(function (){
		
		$(".faqTitle").click(function(){
			
			//제목 클릭시 슬라이드 기능 구현
			$(this).find(".faqContent").slideToggle("fast");
			
			//제목 클릭시 이미지 변경
			if($(this).find(".titleText").find(".qIcon").attr("src")!="http://localhost:9000/mygit/resources/images/q_icon1.png"){
				$(this).find(".titleText").find(".qIcon").attr("src", "http://localhost:9000/mygit/resources/images/q_icon1.png");
			}else{
				$(this).find(".titleText").find(".qIcon").attr("src", "http://localhost:9000/mygit/resources/images/q_icon2.png");
			}
			
			//다른 글 제목 클릭시 이미지 변경
			$(".faqTitle").not(this).find(".faqContent").slideUp("fast");
			$(".faqTitle").not(this).find(".titleText").find(".qIcon").attr("src", "http://localhost:9000/mygit/resources/images/q_icon2.png");
		});
		
		$(".menuBtn").click(function(){			
			$(this).css("color","#111");			
			$(".menuBtn").not(this).css("color","#eee");
		});
		
		
		
		$("#faqShow").css("color","#111");
		/*
		$.ajax({
			url:'/faq_category.do?faCategory=관람',
		})
		*/
		
	});	
</script>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<section>
<table>

<tr>
	<td><h2>FAQ</h2></td>
	<c:if test="${id=='admin' }">
	<td><button type="button" onclick="location.href='faq_write.do'" class="btn_normal">등록</button>	
	</td></c:if>
</tr>

<tr>
	<td colspan="2"><hr><div id="smenuBtn"><span class="menuBtn" id="faqShow">관람</span> |  <span class="menuBtn" id="faqResv">예약</span> 
	| <span class="menuBtn" id="faqPage">홈페이지</span> |  <span class="menuBtn" id="faqEtc">기타</span>  </div>
	<div id="qnaBtn" onclick="location.href='qna_list.do'">Q & A >></div><hr style="clear:both"></td>
</tr>

<tr>
	<td colspan="2">
		<ul>
			<li class="faqTitle">
			<span class="titleText">
			<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목1
			</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<c:if test="${id=='admin' }">
				<div class="btnBox">				
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>											
				</div>	
				</c:if>		
			</div></li>
			<li class="faqTitle">
			<span class="titleText">
				<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목2
			</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<c:if test="${id=='admin' }">
				<div class="btnBox">
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>
				</div>
				</c:if>			
			</div></li><!--  
			<li class="faqTitle">
			<span class="titleText">
			<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목3</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<div class="btnBox">
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>
				</div>			
			</div></li>
			<li class="faqTitle"><span class="titleText">
			<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목4</span>
			<div class="faqContent"><div class="contentBox">AAAAA</div><div class="btnBox">
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>
				</div>			
			</div></li>
			<li class="faqTitle"><span class="titleText">
			<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목5</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<div class="btnBox">
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>	
				</div>
			</div></li>-->
		</ul>
	</td>
</tr>
</table>
</section>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>