<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/code.jquery.com_jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// JQuery 이벤트 : 클라이언트가 수행하는 모든 동작
		
// 		$('input').bind(조건,function);
		/* $('input').bind('click mouseover',function(){
			alert('bind_click!'); // 버튼에 마우스 올리면 alert 실행! 
		}); */
		
		$('input').click(function(){
			alert("click - 클릭!");
		}); // 이걸 더 많이 써요 
		
		//h2 버튼 클릭시 텍스트 뒤에 + 기호 추가
		// ++ 클릭한 요소만 + 기호 추가 
	 	$('h2').click(function(){
// 	 		$('h2').append("+"); 전부 + 기호 추가됨 
	 		$(this).append("+"); // 클릭한것만 + 기호 추가됨(this = 이벤트가 발생한 대상)
	 	});
		
		// img 버튼 클릭시 랜덤한 이미지 출력 
		// 클릭하는 동작 + 이미지들의 이름 + 랜덤 출력 
		// 랜덤한 이미지 출력 = 기존의 img 태그의 사진을 바꾼다 (img 태그의 src를 바꾼다)랜덤하게
		
		var imgArr = ['bear.jpg','bg.jpg','bg1.jpg','bg2.png','bg3.png',
				 'bg4.jpg','cat.jpg','dot.png','guitar-bg.jpg','link.png'];
		
		$('img').click(function(){
// 			alert('이미지 클릭');	
// 			$('img').attr('src',"../img/bg1.jpg");
			
			// 0.0 <= Math.random() < 1.0
			// 0.0 *10 <= Math.random() < 1.0 *10
			// 0.0 <= Math.random() < 1			
// 			alert(Math.floor(Math.random()*10));
			var r = Math.floor(Math.random()*10);
			
			
			$('img').attr('src',"../img/"+ imgArr[r]);
		});
		
		// img 태그에 마우스 올렸을 때 이미지 변경 
		// 마우스 내렸을 때 원래 이미지로 변경 
		
		$('img').mouseover(function(){
// 			alert('img_mouseover!'); 
			$('img').attr('src',"../img/cat.jpg");
		});
		$('img').mouseout(function(){
			$('img').attr('src',"../img/bg.jpg");
		});
		
		
		
		
		
		
	});
</script>


</head>
<body>
	<h1>test1.jsp</h1>
	
<!-- 	<input type="button" value="butten1" onclick="alert('click!');"> -->
	<input type="button" value="butten1">
	
<!-- 	<h2 onclick="alert('h2click!');"> head - 0 </h2> oncilck 걸린다!!  -->
		<h2> head - 0 </h2>
		<h2> head - 1 </h2>
		<h2> head - 2 </h2>
	
		<hr>
		
		<img src="../img/bg.jpg" width="300px">
	
	
	
	
	
	
	
</body>
</html>