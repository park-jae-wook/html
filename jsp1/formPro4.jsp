<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/formPro4.jsp</title>
</head>
<body>
<h1>jsp1/formPro4.jsp</h1>
<%
//사용자 입력한 내용을 들고 http가 요청정보를 들고 서버에 전달
// 서버에 request,response 기억장소 만들고 
// request에 http가 들고온 요청정보를 저장
// post방식으로 데이터를 가져오면 request 한글설정
// request에서 파라미터(태그) 값을 가져와서 => 변수에 저장 => 화면 출력

// request 한글 설정
request.setCharacterEncoding("utf-8");
// request 파라미터 id,pass,gender,hobby,grade,intro 값을 가져와서 
// String 변수저장
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String gender = request.getParameter("gender");
// 이름하나에 값이 여러개 일경우 => request.getParameterValues() => 배열변수 저장
// hobby=게임 hobby=여행  hobby=축구
String hobby[] = request.getParameterValues("hobby");
String grade = request.getParameter("grade");
String intro = request.getParameter("intro");
%>
아이디 : <%=id %><br> 
비밀번호 : <%=pass %><br>  
성별 : <%=gender %><br>     
취미주소 : <%=hobby %><br>
<%-- 취미개수: <%=hobby.length %><br> --%>
<%-- 취미내용 : <%=hobby[0] %><%=hobby[1] %><%=hobby[2] %><br>     --%>
<% 
if(hobby != null){
	

for(int i = 0; i < hobby.length; i++){
%>
    <%=hobby[i] %>
<% 	
   }

}
%>
<br>
<table border="1">
<tr><td>취미</td></tr>
<%
if(hobby !=null){
for(int i = 0; i < hobby.length; i++){ 
%>
      <tr><td><%=hobby[i] %></td></tr>
<% } 
}
%>

</table>
등급 : <%=grade %><br>
자기소개 : <%=intro %><br>    
</body>
</html>