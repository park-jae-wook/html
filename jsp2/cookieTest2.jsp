<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/cookieTest2.jsp</title>
</head>
<body>
<h1>jsp2/cookieTest2.jsp</h1>
<%
// 요청한 사용자 컴퓨터에 있는 쿠키값, 파라미터값, 서버정보, 사용자정보, 세션정보 요청정보를 
// http 들고와서 서버에 전달 => 요청정보를 저장하는 내장개게 request에 저장
// request에 저장된 쿠키값이 여러개 있음 => Cookie 배열변수 저장
Cookie cookies[] = request.getCookies();
// cookies 쿠키값이 있으면  (쿠키값이 null이 아니면)
if(cookies != null){
	// 배열접근 for이용
	for(int i=0; i< cookies.length; i++){
		// 쿠키이름 : cname 찾기
		if(cookies[i].getName().equals("cname")){
			out.println("쿠키주소: " + cookies[i]);
			out.println("쿠키이름: " + cookies[i].getName());
			out.println("쿠키값: " + cookies[i].getValue());
			out.println("쿠키시간: " + cookies[i].getMaxAge());
			out.println("<br>");
		}
	}
}
%>
<a href ="cookieTest1.jsp">쿠키값 만들기</a><br>
<a href ="cookieTest3.jsp">쿠키값 삭제</a><br>
</body>
</html>