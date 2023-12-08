<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/insertPro.jsp</title>
</head>
<body>
<h1>jsp3/insertPro.jsp</h1>
<h1>학생등록처리=>데이터베이스 저장</h1>
<%
//사용자가 입력한 정보를 http가 들고 서버에 전달
//=> 서버에 request 내장객체 저장
//=> request 한글처리
request.setCharacterEncoding("utf-8");
//=> request에 저장된 파라미터(num,name)을 가져와서 => 변수에 저장
int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
%>
학생번호 : <%=num %><br>
학생이름 : <%=name %><br>
<%
//1단계 : 설치한 JDBC 프로그램중에 Driver.class 자바실행 파일 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");
//2단계 : 불러온 파일을 이용해서 데이터베이스 연결
//(데이터베이스 주소, 디비접속아이디,디비접속비밀번호)
//=> 연결정보를 저장
// 데이터베이스 주소 Mysql.Oracle 디비마다 주소 정해짐
String dbUrl = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
//데이터베이스 서버에 접속할 아이디
String dbUser = "root";
//데이터베이스 서버에 접속할 비밀번호
String dbPass = "1234";

Connection con = DriverManager.getConnection (dbUrl, dbUser, dbPass);

//3단계 : 연결정보를 이용해서 sql구문을 만들고 실행할 수 있는 객체생성
// String sql = "insert into student(num,name) value(1,'홍길동')";
//String sql = "insert into student(num,name) value("+num+",'"+name+"')";
String sql = "insert into student(num,name) value(?,?)";

// import="java.sql.PreparedStatement"
// PreparedStatement 자바내장객체 : sql구문을 만들고 실행할수 있는 내장객체
PreparedStatement pstmt=con.prepareStatement(sql);
// 객체생성 후에 미완성 sql구문에 ?에 값을 넣기
// 첫번째 ?에 값을 넣을때 정수형 setInt(?순서,값)		
pstmt.setInt(1,num);		
// 두번째 ?에 값을 넣을때 문자열형 setString(?순서,값)
pstmt.setString(2, name);		
//4단계 : sql구문 실행 (insert,update,delete)
pstmt.executeUpdate();
//실행 후 결과 저장(select)     
//5단계 : 결과를 이용해서 출력, 다른곳에 저장(select)
%>
학생등록성공 <%=pstmt %>
</body>
</html>