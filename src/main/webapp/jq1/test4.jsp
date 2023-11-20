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
		
// 		$('img').css('border','1px solid black')
// 		attr(); = attribute = 속성값 설정 
		var src = $('img:first').attr('src');
		alert(src);
		
		// 첫번째 그림 변경
		$('img:first').attr('src','../img/bg4.jpg');
		// img 태그 모두 border 그리기 (5, 10, 15)
// 		$('img:first').attr('border','5px');
// 		$('img#sc').attr('border','10px');
// 		$('img#tr').attr('border','15px');
		$('img').attr('border',function(idx){
			return (idx+1)*5;
		});
		
		// img 태그 테두리 5 고정, 세로길이 = 100, 200, 300px 
		$('img').attr({
			border : 5, 
			height : function(idx){
				return (idx+1)*100;
			}
		});
		
	});
</script>
</head>
<body>
<h1> /jq1/test4.jsp </h1>

<img src="../img/bg.jpg" width="200px" height="300px">
<img src="../img/bg1.jpg" width="200px" height="300px" id = "sc">
<img src="../img/bg2.png" width="200px" height="300px" id = "tr">

</body>
</html>