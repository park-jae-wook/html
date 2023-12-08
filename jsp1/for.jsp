<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/for.jsp</title>
</head>
<body>
<h1>jsp1/for.jsp</h1>
<%
int a1 = 10; int a2 = 20; int a3 = 30;
int a4 = 40; int a5 = 50;

// 배열
int a[] = {10,20,30,40,50};
out.println("배열 주소 : " + a+ "<br>");
out.println("배열 크기 : " + a.length + "<br>");
out.println("배열 내용 : " + a[0] +"<br>");
out.println("배열 내용 : " + a[1] +"<br>");
out.println("배열 내용 : " + a[2] +"<br>");
out.println("배열 내용 : " + a[3] +"<br>");
out.println("배열 내용 : " + a[4] +"<br>");
out.println("----------------------------"+"<br>");
for(int i = 0; i < a.length; i++){
	out.println("배열 내용 : " + a[i] +"<br>");
}
out.println("----------------------------"+"<br>");
// b 기억장소에 "html" "java" "jsp" "db" 4개 값 저장
// => 배열변수 선언하면서 값을 저장
String b[] = {"html","java","jsp","db"};

for(int i = 0; i < b.length; i++){
	out.println("배열 내용" + b[i] + "<br>");
}
out.println("----------------------------"+"<br>");
for(int i = 0; i < b.length; i++){
	
	
	%>
	배열 내용: <%=b[i] %>  <br>
	<%
}
out.println("----------------------------"+"<br>");

%>
<table border="1">
<tr><td>과목</td></tr>
<%
for(int i = 0; i < b.length; i++){
	%>
	<tr><td><%=b[i]%></td></tr>
	<% 
}
%>
</table>
</body>
</html>