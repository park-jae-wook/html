<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/cookieExample1.jsp</title>
</head>
<body>
<h1>jsp2/cookieExample1.jsp</h1>
<%
//쿠키값 가져오기
// 사용자 컴퓨터에서 가져온 요청정보(쿠키)를 서버에 전달 => request에 저장

// 1) request에서 쿠키값 가져오기 => 변수에 저장
Cookie cookies[] = request.getCookies();

//쿠키값이 없으면 "korea"로 설정
String clanguageValue = "korea";
//2) request에 쿠키값이 있으면 => if
if(cookies != null){
	// 3) for 접근
	for(int i = 0; i < cookies.length; i++){
		// 4) if 접근해서 찾은 쿠키값이름 "clanguage" 찾기
		if(cookies[i].getName().equals("clanguage")){
			// 5) 화면에 출력 (쿠키이름, 쿠키값 출력)		
			out.println("쿠키이름: " + cookies[i].getName());
			out.println("쿠키값: " + cookies[i].getValue());
			//쿠키값을 변수에 저장
			clanguageValue = cookies[i].getValue();
		}
	}
}
// 쿠키값 비교해서 "korea"이면 "안녕하세요", "english"이면 "Hello" 출력
if(clanguageValue.equals("korea")){
	
	out.println("<h1>안녕하세요. 이것은 쿠키 예제입니다.</h1>");

}else{
	
	out.println("<h1>Hello, This is Cookie example</h1>");
 	
}
%>



<form action="cookieExample2.jsp" method="get">
  <input type="radio" name="language" value="korea"    <%if(clanguageValue.equals("korea")){%>checked<%}%>>한국어 페이지 보기 
    <input type="radio" name="language" value="english" <%if(clanguageValue.equals("english")){%>checked<%}%>>영어 페이지 보기
    <input type="submit" value="언어설정">
</form>
</body>
</html>