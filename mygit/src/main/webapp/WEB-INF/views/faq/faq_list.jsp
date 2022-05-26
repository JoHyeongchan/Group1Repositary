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
<script src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mygit/resources/js/boards/faqListAjax.js"></script>
<style type="text/css">
	.faqContent{
	width:78.3%;
	}
	
	.faqTitle{
	display:block;
	height:50px;
	}
</style>
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
	<td colspan="2"><hr><div id="smenuBtn"><span class="listBtn" id="faqShow">관람</span> |  <span class="listBtn" id="faqResv">예약</span> 
	| <span class="listBtn" id="faqPage">홈페이지</span> |  <span class="listBtn" id="faqEtc">기타</span>  </div>
	<div id="qnaBtn" onclick="location.href='qna_list.do'">Q & A >></div><hr style="clear:both"></td>
</tr>

<tr>
	<td colspan="2">
		<ul id=faqBoard><!--
			<li class="faqTitle">
			<span class="titleText">
			<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목1
			</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<div class="btnBox">				
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>											
				</div>		
			</div></li>
			<li class="faqTitle">
			<span class="titleText">
				<img src="http://localhost:9000/mygit/resources/images/q_icon2.png" class="qIcon">&nbsp; 제목2
			</span>
			<div class="faqContent">
				<div class="contentBox">AAAAA</div>
				<div class="btnBox">
				<button class="btn_small">삭제</button>
				<button type="button" onclick="location.href='faq_update.do'" class="btn_small">수정</button>
				</div>		
			</div></li>  
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