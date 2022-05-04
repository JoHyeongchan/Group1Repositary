/**
 * 
 */
 
 	$(document).ready(function() {
		$(".row").click(function() {
			var meminfo = "<div id='meminfo_bg'>";
					meminfo += "<div id='meminfo_sc'>";
					meminfo += "<h3>회원정보</h3>";
					meminfo += "<br><br>";
						meminfo += "<div>";
							meminfo += "<table border=1>";
								meminfo += "<tr>";
									meminfo += "<th>이름";
									meminfo += "<td>";
									meminfo += "<th>성별";
									meminfo += "<td>";
								meminfo += "</tr>";
								meminfo += "<tr>";
									meminfo += "<th>ID";
									meminfo += "<td>";
									meminfo += "<th>PW";
									meminfo += "<td>";
								meminfo += "</tr>";
								meminfo += "<tr>";
									meminfo += "<th>E-mail";
									meminfo += "<td>";
									meminfo += "<th>전화번호";
									meminfo += "<td>";
								meminfo += "</tr>";
								meminfo += "<tr>";
									meminfo += "<th>가입일";
									meminfo += "<td colspan='3'>";
								meminfo += "</tr>";
							meminfo += "</table>";
						meminfo += "</div>";
					meminfo += "<br><br>";
					meminfo += "<h3>예약 내역</h3>";
						meminfo += "<div class='history'>";
							meminfo += "<table border=1>";
								meminfo += "<tr>";
									meminfo += "<th>전시명";
									meminfo += "<th>일자";
									meminfo += "<th>시간";
									meminfo += "<th>인원";
								meminfo += "</tr>";
								meminfo += "<tr>";
									meminfo += "<td>";
									meminfo += "<td>";
									meminfo += "<td>";
									meminfo += "<td>";
								meminfo += "</tr>";
							meminfo += "</table>";
						meminfo += "</div>";
					meminfo += "<br><br>";
					meminfo += "<h3>방문 내역</h3>";
						meminfo += "<div class='history'>";
							meminfo += "<table border=1>";
								meminfo += "<tr>";
									meminfo += "<th>전시명";
									meminfo += "<th>일자";
									meminfo += "<th>시간";
									meminfo += "<th>인원";
								meminfo += "</tr>";
								meminfo += "<tr>";
									meminfo += "<td>";
									meminfo += "<td>";
									meminfo += "<td>";
									meminfo += "<td>";
								meminfo += "</tr>";
							meminfo += "</table>";
						meminfo += "</div>";
						meminfo += "<br><br><br>";
						meminfo += "<div>";
							meminfo += "<button type='button' id='meminfo_close'>닫기</button>";
						meminfo += "</div>";
					meminfo += "</div>";
				meminfo += "</div>";
				
			$('body').append(meminfo);

			$('#meminfo_close').click(function() {
				$('#meminfo_bg').remove();
			});
		});
	});;