/**
 * 
 */

	
	$(document).ready(function (){
		
		
		var id="${id}";
		
		
		$(document).on("click",".faqTitle",function(){
			//제목 클릭시 슬라이드 기능 구현
			if($(this).css("height") =="350px"){
				$(this).css("height","50px");
			}else{
				$(this).css("height","350px");
			}
			
			$(this).find(".faqContent").slideToggle("fast");
			$(".faqTitle").not(this).css("height","50px");
			
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
		
		$.ajax({
			url:"/mygit/faq_category.do",
			type:"GET",
			dataType:"json",
			data:{"faCategory":"관람"},
			success:function(result){
				
				
				var length=result.list.length;
				var i=0;
				var text="";
				
				$(".faqTitle").remove();
				
				for(i=0;i<length;i++){
					
					
					text+="<li class='faqTitle'>";
					text+="<span class='titleText'>";					
					text+="<img src='http://localhost:9000/mygit/resources/images/q_icon2.png' class='qIcon'>&nbsp; "+result.list[i].faTitle;						
					text+="</span>";						
					text+="<div class='faqContent'>";						
					text+="<div class='contentBox'>"+result.list[i].faContent+"</div>";
					if(id=="admin"){
						text+="<div class='btnBox'>";								
						text+="<button type='button' class='btn_small' onclick='location.href=\"faq_delete.do?faId="+result.list[i].faId+"\"'>삭제</button>";
						text+="<button type='button' class='btn_small' onclick='location.href=\"faq_update.do?faId="+result.list[i].faId+"\"'>수정</button>";	
						text+="</div>";
					}
					text+="</div></li>";

				}
				
				$("#faqBoard").append(text);						
				
			}
		});
		
		$("#faqShow").css("color","#111");
		
		$(".listBtn").click(function(){			
			$(this).css("color","#111");			
			$(".listBtn").not(this).css("color","#eee");
			
			var category={"faCategory":$(this).text()};
			
			$.ajax({
				url:"/mygit/faq_category.do",
				type:"GET",
				dataType:"json",
				data:category,
				success:function(result){
					
					
					var length=result.list.length;
					var i=0;
					var text="";
					
					$(".faqTitle").remove();
					
					for(i=0;i<length;i++){
						
						
						text+="<li class='faqTitle'>";
						text+="<span class='titleText'>";					
						text+="<img src='http://localhost:9000/mygit/resources/images/q_icon2.png' class='qIcon'>&nbsp; "+result.list[i].faTitle;						
						text+="</span>";						
						text+="<div class='faqContent'>";						
						text+="<div class='contentBox'>"+result.list[i].faContent+"</div>";				
						
							text+="<div class='btnBox'>";	
							if(id=="admin"){	
							text+="<button type='button' class='btn_small' onclick='location.href=\"faq_delete.do?faId="+result.list[i].faId+"\"'>삭제</button>";
							text+="<button type='button' class='btn_small' onclick='location.href=\"faq_update.do?faId="+result.list[i].faId+"\"'>수정</button>";	
							}
							text+="</div>";
						
						text+="</div></li>";

					}
					
					$("#faqBoard").append(text);						
					
				}
			});
			
		});
		
		
		
	});	
