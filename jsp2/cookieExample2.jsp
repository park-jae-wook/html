<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/cookieExample2.jsp</title>
</head>
<body>
<h1>jsp2/cookieExample2.jsp</h1>
<%
// 사용자 선택한 값이 서버에 전달 => request에 저장
// request에 저장된 language 파라미터값(태그정보값) 가져와서 => 변수에 저장
String language = request.getParameter("language");
%>
사용자가 선택한 값 : <%=language%><br>
<%
// 쿠키객체생성 "이름",값  "clanguage", 사용자 선택한 값
Cookie cookie = new Cookie("clanguage",language);
// 쿠키시간 설정 3600초
cookie.setMaxAge(3600);
// 쿠키를 response =>  사용자 컴퓨터에 저장
response.addCookie(cookie);
%>
쿠키이름 : <%=cookie.getName()%>
쿠키값 : <%=cookie.getValue()%>
<a href ="cookieExample1.jsp">쿠키값 가져오기</a><br>
</body>
</html>