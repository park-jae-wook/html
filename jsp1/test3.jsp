<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/test3.jsp</title>
</head>
<body>
<%
// java,jsp 코드
// 정수형 변수 선언, 변수 이름 hour , 초기값  17저장
int hour = 17;
// 정수형 변수 선언, 변수 이름 min , 초기값  20저장
int min = 20;
// 정수형 변수 선언, 변수 이름 sec , 초기값  30저장
int sec = 30;

%>
<h1>현재 시간 <%=hour %>시 <%=min %>분 <%=sec %>초 입니다.</h1>
<% 
//if 변수 hour 12미만이면 "오전입니다"출력 
//else            12미만이면 아니면 "오후입니다.

if(hour<12){
	
	out.println("오전입니다");
}else{
	out.println("오후입니다.");
}

if(hour<12){
%>	
 	<%=hour %>시 오전입니다
<% 	
}else{
%>	
<%=hour %>시 오후입니다
<% 
}
%>
  
</body>
</html>