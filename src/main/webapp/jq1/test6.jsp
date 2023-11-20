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
		$('img').css('width',250);
		
		setInterval(function(){
			$('body').append($('img').first());
		},2000); // 2초 마다 첫번째 이미지가 뒤로 간다!! 
	});
</script>
</head>
<body>
<!-- 	<h1> test6.jsp </h1> -->
	
	<img src="../img/bg.jpg" width="200px" height="200px">
	<img src="../img/bg4.jpg" width="200px" height="200px">
	<img src="../img/cat.jpg" width="200px" height="200px">
	
</body>
</html>