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
	// 		alert("JQery 사용");
	
	
	var color = $('h2').css('color');
	alert("color : "+ color);

	// 글자색 변경 
// 	$('#num1').css('color','orange');
// 	$('#num2').css('color','blue');
// 	$('#num3').css('color','red');
	var myColor = ['pink', 'blue', 'yellow'];
	
	$('h2').css('background-color',function(idx, value){
// 		alert(idx+'/'+value);
		return myColor[idx];
	});//color-function 끝 
	
// 	$('h2').css('color','yellow');
// 	$('h2').css('background','black');
	
	// 하나의 대상에 둘 이상의 속성을 적용 할 때 
	$('h2').css({
		color : function(idx){
		 return myColor[idx];	
		},
	
		background : 'black'
	});
	
	});
	
	</script>



</head>
<body>
	<h1> /jq1/test3.jsp </h1>
	
	<h2 id ="num1">head - 0</h2>
	<h2 id = "num2">head - 1</h2>
	<h2 id = "num3">head - 2</h2>
	
	
	
	
	
</body>
</html>