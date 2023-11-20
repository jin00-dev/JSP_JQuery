<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	// 디비연결정보 
	final String DRIVER = "com.mysql.cj.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	final String DBID = "root";
	final String DBPW = "1234";
	// 1. 드라이버 로드
	Class.forName(DRIVER);
	// 2. 디비연결
	Connection con =
	  DriverManager.getConnection(DBURL, DBID, DBPW);
	
	String sql = "select * from itwill_member where id = ?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("id")); // ajax로 보낼거니까 form 태그 없이 파라메터로 받을 수 있음 
	
	ResultSet rs = pstmt.executeQuery();
	
	int result = 0 ; 
	
	if(rs.next()){
		// 기존회원의 아이디 (사용불가)
		result = 0;
	}else{
		// 사용 가능한 아이디
		result = 1; 
	}
	%>
<%=result %>