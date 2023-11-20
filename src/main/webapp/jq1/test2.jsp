<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/code.jquery.com_jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
// 	alert("JQuery 실행");
	$('*').css('color','orange');
	
	$('h1').css('color','red');
	$('h2').css('color','blue');
	
	// 아이디 
	$('#s').css('color','orange');
	// 클래스 
	$('.i').css('color','pink');
	//input 태그 글자색 변경	
	$('input').css('color','#7bf542');
	// 속성탐색 선택자 
	// 아이디 - 검정색 
	$('input[type=text]').css('color','black');
	// 비밀번호 - 파란색 
// 	$('input[type=password]').css('color','blue');
	$('input[type^=p]').css('color','purple');
	
	$('input[type^=p]').val("itwill");
	var value = $('input[type^=p]').val();
	
// 	alert(value);
	
	// 테이블의 배경색 변경 
	$('tr:odd').css('background','yellow');
	$('tr:even').css('background','green');
	$('tr:first').css('background','pink');
	$('tr:last').css('background','orange');
	
	});
	</script>

</head>
<body>
	<h1> /jq1/test2.jsp </h1>
	<h2 id="s"> 선택자 </h2>
	<h2 class="i"> ITWILL</h2>
	<h3> busan</h3>
	
	<hr>
	
	아이디 : <input type="text"> <br>
	비밀번호 : <input type="password"> <br>
	
	<hr>
	
	<table border="1">
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		</tr>
	
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		</tr>
	
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		</tr>
	
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		</tr>
	</table>
	
	
	
	
	
	
	
	
	
	
</body>
</html>