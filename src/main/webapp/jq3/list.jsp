<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	// 세션정보(id) 가져와서 관리자 여부 판단
	String id = "admin";
	
	// 회원정보(DB) 전부를 가져오기

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
	// 3. sql 구문(select) && pstmt 객체
	//String sql = "select * from itwill_member";
	String sql = "select * from itwill_member where id != ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, "admin");
	// 4. sql 구문 실행
	ResultSet rs = pstmt.executeQuery();
	// 5. 데이터 처리 
	JSONArray memberList = new JSONArray(); // arraylist 역할을 함 
	System.out.println("Array = " + memberList);
	while(rs.next()){
		// 1명의 정보 => MemberBean, 
		// MemberBean 정보 => ArrayList
		// => 기존 방법 사용 불가. -> JSON 형태로 형변환 불가 
		// json-simple-1.1.1.jar 라이브러리 설치 함 => 자바 객체가 JSON객체로 변경 가능해짐 
		
		// JSON 객체에 DB 정보 저장 
		JSONObject obj = new JSONObject(); //import 있어야 사용 가능!!! / DB 정보 저장 할 수 있게 함 
		obj.put("id",rs.getString("id"));
		obj.put("name",rs.getString("name"));
		obj.put("age",rs.getInt("age"));
		// 날짜 
// 		obj.put("regdate", rs.getDate("regdate")); => 데이터 타입 date -> String
		obj.put("regdate", rs.getDate("regdate")+""); // 연산이 들어가서 처리속도가 조금 느릴 수 있음 + 안정적 
// 		obj.put("regdate", rs.getDate("regdate").toString()); => 정석이긴 한데 안정적이지는 않음...
		System.out.println("obj = "+ obj);
		
		//JSONObject -> JSONArray 저장 
		memberList.add(obj); // BoardDTO => JSONObject 
		
		System.out.println("Array2 = " + memberList);
		
	}// while

	// 회원정보 출력 (테이블)
	%>
<%=memberList %>