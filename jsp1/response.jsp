<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/response.jsp</title>
</head>
<body>
<h1>jsp1/jsp1/response.jsp</h1>
<!-- p190 2) response JSP내장객체 =>HttpServletResponse 자바내장객체
       =>기억장소할당(객체생성)
       => HTTP 요청에 대한 응답 정보를 저장하는 객체
       => 응답정보를 저장하면 => 웹서버 전달=> http에 전달=> 사용자 전달 
       => response.setHeader("헤더이름",헤더값) 사용자 헤더값 변경
          response.addCookie(쿠키값) 쿠키값을 사용자 컴퓨터에 파일로 저장
          response.setContentType("text/html; charset=UTF-8") 
          사용자 보는페이지 내용타입 변경
          response.sendRedirect("주소") 사용자 페이지를 다른곳으로 이동 설정
          (주소변경 => 하이퍼링크)
        -->
       
<a href="request.jsp">request.jsp 이동(하이퍼링크)</a>
<%
//서버에서 하이퍼링크(이동) 명령 내림
response.sendRedirect("request.jsp");
%>       
</body>
</html>