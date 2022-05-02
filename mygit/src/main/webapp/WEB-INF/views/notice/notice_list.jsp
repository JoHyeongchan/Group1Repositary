<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
		margin: 0; padding: 0;
	}
	
	body{
		width:100%;
		height: 100%;
	}
	h2{
		display: block;
		font-size: 40px;
		text-indent: 20px;
		margin: 20px;
	}
	
	section {
		width: 900px;
		margin: 0 auto;
		padding: 50px 100px;
		box-sizing: border-box;
		text-align: center;
		/*border: 1px black solid;*/
	}
	
	tr{
		height : 35px;
	}
	
	th{
		background-color: #ddd;
	}
	
	.btn_search{
		width: 60px;
		height: 30px;
	}
	
	.btn_normal{
	
		float:right;
	    background-color: #111;
		color:#eee;
		margin:0;
		width:100px;
		height:40px;
		font-size: 20px;
	}
	
	.btn_normal:after{
		clear:right;
	}
	
	table{
		width: 700px;
		border-collapse: collapse;
	}
	
	tr{	
		height: 40px;
	}
	
	.ntype{
		text-align:center;
		width: 100px;
	}
	
	.ntitle{
		text-indent: 20px;
		width: 500px;
	}
	
	.ndate{
		text-align:center;		
	}
	
	.bottom{

		width: 700px;
		height: 50px;
		text-align: center;
		/*border:1px black solid;*/
		padding: 10px;
		
	}
	.searchBar{
		padding-top:5px;
	}
	.pageBtn{
		clear:both;
		width: 700px;
	}
</style>
</head>
<body>
<section>
<h2>공지사항</h2>
<hr>
<br>
<!-- 테이블 -->
<table border="1">
	<!--  테이블 1번째줄 -->
	<tr>
		<th class="ntype" >유형</th><th class="ntitle" align="center">제목</th><th class="ndate">등록일</th>
	</tr>
	<!--  Dummy Content -->
	<tr>
		<td class="ntype">서울</td><td class="ntitle"><a href="notice_content.do">test1</a></td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test2</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test3</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test4</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test5</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test6</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test7</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test8</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test9</td><td class="ndate">2022-05-01</td>
	</tr>
	<tr>
		<td class="ntype">서울</td><td class="ntitle">test10</td><td class="ndate">2022-05-01</td>
	</tr>
</table>
<br>


<div class="bottom">
	<form>
	<div class="searchBar">
		<select>
		<option value="title">제목</option>
		<option value="content">본문</option>
		<option value="userid">작성자</option>
	</select>
	<input type="text" value="내용을 입력해주세요" name="searchText" onclick="this.value=''"></input>
	<button type="submit" class="btn_search">검색</button>
	<button type="button" onclick="location.href='notice_write.do'" class="btn_normal">등록</button>
	</div>
	
	</form>
</div>
<div class="pageBtn"><<&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;>></div>
	

</section>

</body>
</html>