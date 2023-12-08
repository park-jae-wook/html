<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/loginPro.jsp</title>
</head>
<body>
<h1>jsp1/loginPro.jsp</h1>
<%
// 사용자가 입력한 id,pass값을 http가 들고 loginPro.jsp요청을 서버에 전달
// 서버 전달받아서 => request,response 기억장소 만들고
// request에 id,pass 파라미터값을 저장 => request 가져와서 변수에 저장

String id = request.getParameter("id");
String pass = request.getParameter("pass");
%>
폼에서 입력한 아이디 : <%=id %><br>
폼에서 입력한 비밀번호 : <%=pass %><br>
<%
//디비에 저장된 사용자 dbId="admin"  dbPass="p123" 임의로 정하기(약속하기)
String dbId = "admin";
String dbPass = "p123";
%>
디비에 저장된 아이디 : <%=dbId %><br>
디비에 저장된 비밀번호 : <%=dbPass %><br>
<%
// 폼아이디 디비아이디 비교 and 폼비밀번호 디비밀번호 비교
// => "아이디 비밀번호 일치"
// => 틀리면 "아이디 비밀번호 틀림"
// 기본자료형 비교 ==
// 자바 문자열 비교하는 명령 => equals()
if(id.equals(dbId) && pass.equals(dbPass)){
	out.println("아이디 비밀번호 일치");
	// 아이디 비밀번호 일치 하면 로그인 표시 설정(연결되어 있는 동안 페이지 상관없이 값을 유지)
	// 세션에 로그인 표시 저장("세션에 로그인 표시이름", 값)
	// "id" 선정한 이유는 id 똑같은 회원은 없고, id기준값으로 다른정보를 가져올수 있음
	session.setAttribute("id", id);
	
	// loginMain.jsp 이동(하이퍼링크)
	response.sendRedirect("loginMain.jsp");
}else{
	out.println("아이디 비밀번호 틀림");
	// login.jsp 이동(하이퍼링크)
	response.sendRedirect("login.jsp");	
}

%>
</body>
</html>