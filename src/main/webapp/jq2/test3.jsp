<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- <script src="../js/code.jquery.com_jquery-3.7.1.js"></script> 라이브러리 충돌로 주석처리 함 -->
<script type="text/javascript">
	$(document).ready(function(){
		
		//효과
		$('h2').click(function(){
// 			$('div').toggle();
// 		$(this).next().fadeToggle();
		$(this).next().fadeToggle(function(){
			// 콜백 함수 : 작동하는 효과가 모두(100%) 끝난 후 실행하는 함수
			alert("콜백");
			});
		});
		
		$(".slider").bxSlider();
		
		
	});
</script>
</head>
<body>
	<h1> test3.jsp </h1>
	
	<h2> 열기, 닫기 - 1 </h2>
	<div>
		<h2> 제목 -1 </h2>
		<p> 내용 - 1 </p>
	</div>
	
	<hr>
	
	<h2> 열기, 닫기 - 2 </h2>
	<div>
		<h2> 제목 - 2 </h2>
		<p> 내용 - 2 </p>
	</div>
	
	<hr>
	
	<div class="slider">
    	<div>
			<img src="../img/bg.jpg">
		</div>
      	<div>
	      	<img src="../img/cat.jpg">
      	</div>
    </div>


</body>
</html>