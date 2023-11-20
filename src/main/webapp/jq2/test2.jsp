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
	
	$('textarea').keyup(function(){
// 		alert("키보드 입력");
		var t = $('textarea').val();
// 		$('h2').html(150 - (t.length));
		$('h2').html(function(){
			return (150-t.length) + " / 150";
		}); 
		
		// 글자수 150자 이상 = red / 미만 = black 
		if(150-t.length >= 0){
			$('h2').css('color','black');
		}else{
			$('h2').css('color','red');
		}
	});

		// JS 에서 요소에 접근했던 방법 
		// document.form.id.value 
		// document.getElementById(아이디) 
		
		//JQuery에서 요소에 접근했던 방법 
		// $('input') or $(#id)
	
		// 데이터 유효성 체크할 때 유용하게 쓸 수 있겠지!? JS보다 간결하게
		var id = $('#id').val();
		if(id == ''){
			alert("아이디를 입력하게나");
		}
		
	});
</script>

</head>
<body>
	<h1> test2.jsp </h1>
	
	<input type="text" name="id" id="id">
	
	
	<h2>150</h2>
	<textarea rows="10" cols="50"></textarea>

	
</body>
</html>