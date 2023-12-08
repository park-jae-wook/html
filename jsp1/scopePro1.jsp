<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/scopePro1.jsp</title>
</head>
<body>
<h1>jsp1/scopePro1.jsp</h1>
<%
// 사용자가 입력한 요청정보를 서버에 전달하면 request 내장객체 저장
// request에 가져와서 변수에 저장 => 출력
String id = request.getParameter("id");
String pass = request.getParameter("pass");
// 내장객체 값 저장
pageContext.setAttribute("page", "pageContextValue");
request.setAttribute("req", "requestValue");
session.setAttribute("ses", "sessionValue");
application.setAttribute("app", "applicationValue");
%>
아이디 : <%=id %><br>
비밀번호 : <%=pass %><br>
pageContext 값 : <%=pageContext.getAttribute("page") %> <br>
request 값 : <%=request.getAttribute("req") %> <br>
session 값 : <%=session.getAttribute("ses") %> <br>
application 값 : <%=application.getAttribute("app") %> <br>


<a href="scopePro2.jsp">scopePro2.jsp로 이동</a><br>
<!-- get방식 형태 /scopePro1.jsp?id=kim&pass=123-->
<a href="scopePro2.jsp?id=<%=id%>&pass=<%=pass%>">
scopePro2.jsp로 get방식으로 데이터 요청하면서 이동</a><br>

<%
// response.sendRedirect("scopePro2.jsp");
//get방식으로 데이터 요청
//response.sendRedirect("scopePro2.jsp?id="+id+"&pass="+pass);

//p222 액션태그 : JSP문법으로 태그처럼 사용하도록 만든 문법, %밖애 사용, 주석은 JSP주석
//      1) <jsp:include     => 반복되는 코드 가져오기
//p223  2) <jsp:forward     => 페이지(주소줄) 변경 없이 이동, request값을 가지고 이동
%>
<!-- html태그주석 -->
<%-- <jsp:forward page="scopePro2.jsp"/> --%>
</body>
</html>