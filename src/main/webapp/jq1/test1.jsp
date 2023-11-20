<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQuery 라이브러리 추가 -->
<!-- <script src="../js/code.jquery.com_jquery-3.7.1.js"></script> -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<!-- JQuery 사용 -->
<script type="text/javascript">
	$(document).ready(function(){
		alert("JQery 사용");
	});
	
	jQuery(function(){
		alert("JQuery2 사용");
	});

</script>


</head>
<body>
	<h1> /jq1/test1.jsp </h1>
	
	<h2>JavaScript 사용 - HTML 코드 활용</h2>
	
	<script type="text/javascript">
	// HTML 안에 기본적으로 JS가 포함되어 있다. 
	alert("JS 실행");
	
	</script>
	
	
	
</body>
</html>