<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/include1.jsp</title>
</head>
<body>
<%
//p229 include액션태그:반복되는 코드를 파일로 분리시켜서 파일을 가져와서 사용
%>
<h1>jsp2/include1.jsp</h1>
<table border="1" width="600" height="600">
<tr height="100"><td>
    <jsp:include page="includeTop.jsp"/>
</td></tr>
<tr height="400"><td><h1>jsp2/include1.jsp 본문내용</h1></td></tr>
<tr height="100"><td>회사주소 서면 전화번호 051-803-0909 </td></tr>
</table>
</body>
</html>