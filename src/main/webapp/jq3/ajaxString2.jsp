<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>ajaxString2.jsp</h1>
	
	<%
		// ajax - data 로 전달 된 정보는 parameter로 전달 됨 
		
		System.out.println(request.getParameter("age"));
		System.out.println(request.getParameter("name"));
	
		// "전달정보(name): 전달된 정보 값" 출력 
		int age = Integer.parseInt(request.getParameter("age"))+100;
		
	%>
	<h1> 전달정보(name) : <%=request.getParameter("name")%></h1>	
	<h1> 전달정보(age) : <%=age %></h1>	
	
	
	
</body>
</html>