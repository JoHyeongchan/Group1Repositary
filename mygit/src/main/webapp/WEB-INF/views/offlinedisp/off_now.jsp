<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/mygit/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	$(".category").click(function(){
			$(location).attr("href","off_now.do?rpage=1&category="+$(this).text());
	});
});
</script>
<link rel="stylesheet" type="text/css" href="resources/css/offline/offline.css">
<style type="text/css">
	table{
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 20px;
	overflow: hidden;
	min-width: 100%;
	text-align: center;
}

a{
		text-decoration: none;
		color: #111;
	}
	
	a:hover{
		color: #888;
	}

.category{
	cursor:pointer;
}	
</style>
</head>
<body>
   <!-- header -->
   <jsp:include page="../header.jsp"></jsp:include>
	<hr>
	<section>
			<div id="search">
			<h1 id="p_name">현재전시</h1>
			<form id="searchForm" method="get" action="offDispSearch.do">
				<input type="hidden" value="1" name="rpage">
				<input type="text" placeholder="작품명 또는 작가명을 검색해주세요." id="searchbar" name="searchtext">
				<button type="submit" id="searchbutton">검색</button>
				<c:if test="${id=='admin' }">
				<button type="button" onclick="location.href='/mygit/offDispWrite.do'" style="cursor:pointer"  class="category">등록</button>
				</c:if>
			</form>
			</div>
			<hr>
			<div id="categorybtn"><!-- 카테고리 버튼 -->
			<button type="button" class="category">전체</button>
			<button type="button" class="category">전시</button>
			<button type="button" class="category">필름앤비디오</button>
			<button type="button" class="category">다원예술</button>
			<button type="button" class="category">해외전시</button><br> 
			</div>
			<table><!-- 컨텐츠목록 -->
			<tr class="td1">
				<c:forEach var="vo" items="${list}"> 
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do?exId=${vo.exId}'">
					<div class="container">
					  <img src="http://localhost:9000/mygit/resources/upload/${vo.sFileArr[0] }" alt="image1" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">${vo.exTitle }</p>
						<p>${vo.exTermStart }~${vo.exTermEnd }</p>
					</div>
					<script>
						var count=document.getElementsByTagName("td").length;
						
						if(count ==4){
							document.write("</tr><tr>");
						}
					</script>
				</td>	
				</c:forEach>
				<script>
				var count=document.getElementsByTagName("td").length;
				while(count <8){
					document.write("<td class='emptyContainer'></td>");
					count++;
					
					if(count ==4){
						document.write("</tr><tr>");
					}
				}
				</script>	
					<!-- 
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/myyourmemory.png" alt="image2" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">나너의 기억</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>
				
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/to the world through art.png" alt="image3" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">MMCA 국제미술 소장품 기획전 ≪미술로,세계로≫</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/(function).png" alt="image4" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">MMCA 과천프로젝트 2021:예술버스쉼터_쓸모없는 건축과 유용한 조각에 대하여</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	
			</tr>
			<tr class=td1>
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/circular garden project.png" alt="image5" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">원형정원 프로젝트: 달뿌리-느리고빠른 대화</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/of the perfect city.png" alt="image6" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">MMCA 청주프로젝트 2021≪천대광: 집우집주≫</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/lee kun-hee collection.jpg" alt="image7" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">MMCA 이건희컬렉션 특별전: 한국미술명작</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	
				<td style="cursor: pointer;" onclick="location.href='http://localhost:9000/mygit/off_content_no.do';">
					<div class="container">
					  <img src="resources/images/offline/offnow/with you n me.png" alt="image8" class="image" width="300px" height="300px">
					</div>
					<div class="text">
						<p class="title">너랑 나랑__</p>
						<p>2021-05-04~2022-12-11</p>
					</div>
				</td>	-->
			</tr>
		</table>
		<div class="pageNum" align="center"> <!-- 페이지 번호 -->
			<script>
				var pageCount=${pageCount};
				var reqPage=${reqPage};	
				var i=1;
				
				var mode='${mode}';
				var searchtext='${searchtext}';
				
				for(i=1;i<=pageCount;i++){
					if(i==reqPage) document.write("<b>");
					document.write("<a href='http://localhost:9000/mygit/off_now.do?rpage="+i);
					//if(searchtext!="") document.write("&searchtext="+searchtext);	
					document.write("'>");
					document.write(i+"</a>");
					if(i==reqPage) document.write("</b>");
					document.write("&nbsp;&nbsp;&nbsp;");
				}

			</script>	
		</div>
		<div><!-- 맨 위로 버튼 -->
			<img alt="" src="">
		</div>
		
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>