<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/scopePro2.jsp</title>
</head>
<body>
<h1>jsp1/scopePro2.jsp</h1>
<%
// 사용자가 입력한 요청정보를 서버에 전달하면 request 내장객체 저장
// request에 가져와서 변수에 저장 => 출력
String id = request.getParameter("id");
String pass = request.getParameter("pass");

%>
아이디 : <%=id %><br>
비밀번호 : <%=pass %><br>
pageContext 값 : <%=pageContext.getAttribute("page") %> <br>
request 값 : <%=request.getAttribute("req") %> <br>
session 값 : <%=session.getAttribute("ses") %> <br>
application 값 : <%=application.getAttribute("app") %> <br>
</body>
</html>