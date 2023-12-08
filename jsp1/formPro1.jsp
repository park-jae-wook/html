<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/formPro1.jsp</title>
</head>
<body>
<h1>jsp1/formPro1.jsp</h1>
<!-- p148 html주석(설명글) -->
<%-- p149 <%="jsp주석" %> --%>
<%
// 자바주석 ctrl shift c
/*
ctrl shfit /
자바
여러줄
주석
*/
// http:localhost:8080/webProject/jsp1
//      /formProl.jsp?id=kim&pass=123     
// java,jsp 코드 
// 사용자가 입력 정보를 서버에 전달 (http)=> 서버에 요청정보 저장(request)
// => request 요청정보를 가져와서 =>출력, 디비연결 비교

String sid = request.getParameter("id");
String spass = request.getParameter("pass");
%>
아이디 : <%=sid %><br>
비밀번호 : <%=spass %><br>


</body>
</html>