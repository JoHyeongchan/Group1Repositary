<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/mygit/resources/css/online/online_colmov_list.css">
<style>
.digitalColBox{
	margin-left:4%;
	margin-right: 4%;
}

.imgArea{
	display: flex; 
	justify-content:center;
	height:200px;
}

</style> 

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
		<h1>소장품</h1>
		<div id="digitalForm">
		<form method="get" action="collectionSearch.do">
			<input type="hidden" value="1" name="rpage">
			<input type="text" placeholder="검색어를 입력해주세요" id=searchBar name="searchtext">
			<button type="submit" onclick="" class="btnCollectionSearch">검색</button>			
		</form>
		</div>
		<c:if test="${id =='admin'}">
		<div id="btnArea">
		<button class="btnList" onclick="location.href='collectionWrite.do'">등록</button>
		</div>
		</c:if>		
		<hr style="clear:both">
		<table>
			<tr>
			<c:forEach var="vo" items="${list}">
				<td onclick="location.href='collectionInfo.do?coId=${vo.coId}'"
					style="cursor: pointer"  class="digitalColBox">
					<div align="center" class="imgArea">
						<img src="http://localhost:9000/mygit/resources/upload/${vo.coSfile }" class="digitalColImg">
					</div> <br>
					<div class="itemInfo">
						<span class="itemArtist">${vo.coAuthorKor}<br>${vo.coAuthorEng }</span>
						<span class="itemTitle">${vo.coTitle }</span>
						<span class="itemYear">${vo.coYear }</span>
					</div>
				</td>
				</c:forEach><script>				
					var divLast=${divLast};
					var pageCount=${pageCount};
					var reqPage=${reqPage};
								
					if(divLast!=0 && (reqPage==pageCount)){
						var i=0;
						for(i=0;i<divLast;i++){
							document.write("<td class='digitalColBox'></td>");
						}
					}</script>
			</tr>
		</table>
		
		<div class="pageNum"> <!-- 페이지 번호 -->
			<script>
				var pageCount=${pageCount};
				var reqPage=${reqPage};
				var i=1;
				
				var mode='${mode}';
				var searchtext='${searchtext}';
								
				for(i=1;i<=pageCount;i++){
					if(i==reqPage) document.write("<b>");
					document.write("<a href='http://localhost:9000/mygit/online/collection"+mode+".do?rpage="+i);
					if(searchtext!="") document.write("&searchtext="+searchtext);	
					document.write("'>");
					document.write(i+"</a>");
					if(i==reqPage) document.write("</b>");
					document.write("&nbsp;&nbsp;&nbsp;");
				}
			</script>

		</div>
		<hr>
		
		
	</section>


<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>