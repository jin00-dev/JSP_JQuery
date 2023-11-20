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
	// 요소의 내용을 변경 
	// html() , text() 
	
	var ht =$('h2').html();
	//alert(ht);
	var tx = $('h2').text();
	//alert(tx);
	
	$('h2').html("hello");
	$('h2').text("ITWILL");
	
// 	$('div').html("<h3> hello ITWILL </h3>");
	
// 	$('div').text("<h3> hello </h3>");
	
// 	$('div').html(function(idx, oldhtml){
// // 		alert(idx+"/"+oldhtml);
// 		return oldhtml + (idx+1);

// 	});
	
	// 내용 추가 
	$('body').append("안녕하세요");
	$('body').prepend("안녕하세요");
	
	$('.d1').html(function(idx){
		return "아이티윌 부산" + (idx+1);
	});
	
// 	$('.d1').append(function(idx){
// 		return "아이티윌 부산" + (dix + 1);
// 	});
	
	// 홍길동, 20, 부산 => 테이블에 추가 
	$('table').append("<tr> <td>홍길동</td><td>20</td><td>부산</td> </tr>");
	
	// 배열 (2차원 배열) => JSON 형태 (JS Object Nation)
	var data = [
				{name : '김학생', age : 29, addr : '부산'},
				{name : '이학생', age : 25, addr : '서울'},
				{name : '박학생', age : 27, addr : '대구'},
				{name : '최학생', age : 22, addr : '대전'},
				{name : '안학생', age : 25, addr : '세종'},
				];
	
	// $('요소').each(function(){}); => 요소에 순차적으로 접근..!! (반복문 처럼 사용)
	// $.each(요소,function(){}); => 다른 사용 법!! 
	
	// 하고싶은 것 : 배열에 있는 값을 테이블에 출력 하는 것!! 
	// 지금 할 것을 생각!! = 값을 꺼내서 테이블에 출력하는 것. 
	//				= 데이터를 가져오는 것이 먼저 (배열에 접근..!)
	$.each(data,function(idx,obj){
		//alert("!!"); 5번 뜬다 = 배열의 갯수만큼 접근한다..! 
// 		alert(idx+"/"+obj); => obj가 뭐지? = 객체 
		console.log(obj);// 개발자 도구의 console창에서 볼 수 있음 
// 		alert(obj.name);// 학생이름이 순서대로 alert 창에 출력됨 
		// 1. 코드가 길어져 한눈에 안보일 수 있음 
		$('table').append("<tr> <td>"+obj.name+"</td><td>"+obj.age+"</td><td>"+obj.addr+"</td> </tr>");
		
		// 2. 코드를 한눈에 볼 수 있는 형태 사용 
		//(table형태 등에서는 해당 형태 사용하는 것이 좋음)  
		var resultTag = "<tr>"
						+"<td>"+obj.name+"</td>"
						+"<td>"+obj.age+"</td>"
						+"<td>"+obj.addr+"</td>"
						+"</tr>";  // 싹다 내려쓰기 해서 적어도 됨... 
		$('table').append(resultTag);
	});
	
// 	$.each(data,function(idx,obj){
		
// 		$('.d2').append(obj.name + " : " + obj.age + " : " + obj.addr + "<br>" );
		
// 	}); // 내코드 
	
// 	$(data).each(function(idx,obj){
		
// // 		$('.d2').html(obj.name + " : " + obj.age + " : " + obj.addr);
// 		$('.d2').text(obj.name + " : " + obj.age + " : " + obj.addr);
// 		// 마지막 학생의 정보만 출력 됨 = > 위의 내 코드로 해야 다 나와유~  
// 	});
	
	$('.d2').append(function(idx){
		var obj = data[idx];
		
		return obj.name + " : " + obj.age + " : " + obj.addr + "<br>";
	});
	
	
	
	
	
	
	
});

</script>
</head>
<body>
	<h1>test5</h1>
	
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	
	<hr>
	
	<div>0</div>
	<div>1</div>
	<div>2</div>
	
	<hr>
	
	<!-- 숫자 대신 '아이티윌 부산' 1~3 출력 -->
	<div class = "d1">0</div>
	<div class = "d1">1</div>
	<div class = "d1">2</div>
	
	<hr>

	<table border="1">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>지역</td>
		</tr>
	</table>
	
	<hr>
	
	<!-- 이름 : 나이 : 지역 형태로 출력 -->
	<div class = "d2"></div>
	<div class = "d2"></div>
	<div class = "d2"></div>
	
</body>
</html>