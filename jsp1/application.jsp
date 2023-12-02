<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/application.jsp</title>
</head>
<body>
<h1>jsp1/application.jsp</h1>
<%
// p199
//6) application JSP내장객체 => ServletContext 자바내장객체=>기억장소할당(객체생성)
//=> 애플리케이션의 컨텍스트 정보(서버 정보)를 저장한 객체
//=> 서버가 시작되어지면 (start) application 내장객체 기억장소 할당
//   서버에 하나만 할당 되어짐 
//   서버가 stop이 되면 기억장소 삭제
//   서버의 자원 공유(방문자 수 ..)
//   메서드() 
%>
서버 정보 : <%=application.getServerInfo() %><br>
서버 물리적인 경로 : <%=application.getRealPath("/") %><br>
<%
// p201 out내장객체
//5) out JSP내장객체 => JspWriter 자바내장객체=>기억장소할당(객체생성)
// => 응답 페이지 전송을 위한 출력 스피림(출력 정보 저장) 객체
//p202 메서드()
out.println("출력정보저장<br>");
%>
출력 버퍼의 크기 : <%=out.getBufferSize() %> 바이트<br>
출력 버퍼의 남은 크기 : <%=out.getRemaining() %> 바이트<br>
<%
//출력을 종료
out.close();
//종료 후 출력 에러 발생
out.println("종료후 출력<br>");

// p192 pageContext 내장객체
//4) pageContext JSP내장객체 => PageContext 자바내장객체=>기억장소할당(객체생성)
// => 페이지 실행에 필요한 컨텍스트 정보(프로젝트 한페이지 정보)를 저장한 객체
// => 페이지가 바뀌면 새로운 페이지정보를 내장객체 새로 만들어지고 페이지 정보 저장
// p193 메서드()
%>
현페이지 request정보 : <%=pageContext.getRequest() %><br>
현페이지 session정보 : <%=pageContext.getSession() %><br>
<%
//p204 ~ 209
//7) config, page, exception
%>
</body>
</html>