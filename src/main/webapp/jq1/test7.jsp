<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.h0{
		background-color : black;
		color : white;
	}
	.h1{
		background-color : red;
		color : white;
	}
	.h2{
		background-color : blue;
		color : white;
	}
	.h3{
		background-color : orange;
		color : white;
	}
	.h4{
		background-color : pink;
		color : white;
	}


</style>

<script src="../js/code.jquery.com_jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
// // 		alert("JQuery 실행");
// 		$('h2').css('background','yellow'); // h2 태그에 노란색 배경 설정
		
// 		var myColor = ["red","blue","green","orange","pink"]; // 배열에 색 지정
// 		$('h2').css('background',function(idx){ // 함수 사용 
// 			return myColor[idx]; // 각 idx 마다 배열의 색을 출력
// 		});
		
// 		// 클래스 명을 주고 설정할 수도 있음!! - 더 많이 쓸거야 
// 		$('.h0').css('background',"pink");

		// 디자인 팀에서 CSS를 줬어! 위에 style 태그처럼! 
		// 그런데 하나하나 class 설정 해줘야 하는가?? No!!!!
		// addClass() => 특정요소에 클래스 명을 설정 가능 아래처럼!!

		// 		$('h2').addClass('h0'); => 하나에 접근..!! 
		
		// 각각 접근 해볼거야!! 
		$('h2').each(function(idx){
// 			$('h2').addClass('h'+idx);
			// 이렇게 하면 h2 태그 하나에 class가 h0 ~ h4 까지 모두 걸린다. 
			// 그러면 가장 마지막 class인 h4가 출력됨...
			$(this).addClass('h'+idx); //이렇게 하면 각각 class가 걸림 
			// JQuery에서의 this - (특정 이벤트/동작이 수행하는) + 나자신 객체 
			// => 특정 동작이 수행되는 시점의 것..? 
			
		}); 
		
		
	});
</script>

</head>
<body>
	<h1> test7.jsp </h1>
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	<h2>head-3</h2>
	<h2>head-4</h2>
	
	
	
</body>
</html>