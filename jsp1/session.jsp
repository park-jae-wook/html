<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/session.jsp</title>
</head>
<body>
<h1>jsp1/session.jsp</h1>
<%
//p195 3) session JSP내장객체 => HttpSession 자바내장객체=>기억장소할당(객체생성)
//=> 클라이언트의 세션 정보(연결정보)를 저장한 객체
//=> 연결 만 되어있으면 페이지 상관없이 값이 유지

//세션기억장소 삭제
//1) 사용자가 사용하는 브라우저를 모두 닫았을때 - 사용자가 세션ID(통행증)를 잊어버림
//2) 사용자가 서버에 접근을 30분동안 하지 않았을때 - 세션 기억장소 삭제
//3) 사용자가 로그아웃 (세션삭제명령) - 세션 기억장소 삭제
%>
세션ID(통행증) : <%=session.getId() %><br>
세션만든 시간 : <%=session.getCreationTime() %><br>
세션 마지막 접근 시간 : <%=session.getLastAccessedTime() %><br>
세션 유지 시간 : <%=session.getMaxInactiveInterval() %>초(1800초, 30분)<br>
세션 유지 시간 변경
<%
session.setMaxInactiveInterval(3600);
%>
<br>
세션 유지 시간 변경 : <%=session.getMaxInactiveInterval() %> 초<br>
사용자가 로그아웃 (세션기억장소 전체삭제 명령)
<%
// session.invalidate();
// p270
// p272 세션영역에 속성을 생성(저장)
session.setAttribute("sessionName", "sessionValue");
%>
<br>
저장된 세션값 가져오기 <%=session.getAttribute("sessionName") %><br>
</body>
</html>