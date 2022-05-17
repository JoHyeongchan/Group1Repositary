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
/*
.btnList{
	float:right;
	margin-right: 40px;
	height: 50px;
	color:white;
	background-color: black;
	border-radius: 25px;
	width: 150px; font-size: 20px;
}

#digitalForm{
	float:left;
	width: 45%;
}

#btnArea{
	float:right;
	width:45%;
	padding: 10px;
}
*/
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
		<form method="post">
			<input type="text" placeholder="검색어를 입력해주세요" id=searchBar name="searchtext">
			<button type="submit" onclick="" class="btnCollectionSearch">검색</button>			
		</form>
		</div>
		<div id="btnArea">
		<button class="btnList" onclick="location.href='collectionWrite.do'">등록</button>
		</div>
		
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
				</c:forEach>
				
				<script>				
					var divLast=${divLast};
					var pageCount=${pageCount};
					var reqPage=${reqPage};
								
					if(divLast!=0){
						var i=0;
						for(i=0;i<divLast;i++){
							document.write("<td class='digitalColBox'></td>");
						}
					}
				</script>
			</tr>
		</table>
		
		<div class="pageNum"> <!-- 페이지 번호 -->
			<script>
				var pageCount=${pageCount};
				var i=1;
				for(i=1;i<=pageCount;i++){
					document.write("<a href='http://localhost:9000/mygit/online/collectionList.do?rpage="+i+"'>");
					document.write("<span>"+i+"</span></a>&nbsp;&nbsp;&nbsp;</a>");
				}
			</script>

		</div>
		<hr>
		
		
	</section>


<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>