<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UUID uuid = UUID.randomUUID(); //16진수 형태의 랩덤한 값을 추출
	//문자열 자르기
	String[] arr = uuid.toString().split("-");
	
	session.setAttribute("auth", arr[1]);



%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>인증페이지</h2>
	<form action="auth_ok.jsp" method = "post">
		인증문자 : <b><i><del><%=arr[1] %></del></i></b> <!--i 기울기, del 삭제 - , b 굵게   -->
		인증문자를 입력하세요 : <input type ="text" name="code"><br/>
		<input type="submit" value = "확인">
	
	</form>

</body>
</html>