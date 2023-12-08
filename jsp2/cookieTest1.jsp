<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/cookieTest1.jsp</title>
</head>
<body>
<%
// 쿠키(Cookie 자바내장객체) : JSP내장객체 없음, 객체생성해서 사용
//  : 사용자 컴퓨터 하드웨어에 파일로 저장
//  : 페이지 상관없이, 서버 상관없이, 사용자 컴퓨터 상관없이 값을 유지
//  : 서버에서 값을 만들어서 사용자 컴퓨터 하드웨어에 파일로 저장

//세션, 쿠키 차이점 공통점
//세션 : 연결정보를 저장, 페이지 상관없이 값이 유지
//    : 서버에 저장, 보안이 필요한 값을 저장(로그인 정보)
//쿠키 : 페이지,서버,사용자 컴퓨터 상관없이 값을 유지
//    : 사용자 컴퓨터 저장, 보안 상관없는 값을 저장,서버에 부하없이 사용

//쿠키 생성방법 1)HTTP혜더 이용, 2) Cookie 자바내장객체(ARI) 이용

%>
<h1>jsp2/cookieTest1.jsp</h1>
<%
// 쿠키값 만들기
// Cookie 객체생성 => 서버에 만들어짐
Cookie cookie = new Cookie("cname","cookieValue");
// Cookie 유지시간설정 (초)
cookie.setMaxAge(1800);
// 서버에 만들어진 쿠키값을 = 사용자 컴퓨터에 전달해서 저장
response.addCookie(cookie);

%>
쿠키주소 : <%=cookie %><br>
쿠키이름 : <%=cookie.getName() %><br>
쿠키값 : <%=cookie.getValue() %><br>
쿠키설정시간 : <%=cookie.getMaxAge()%>초<br>

<a href ="cookieTest2.jsp">쿠키값 가져오기</a><br>
</body>
</html>