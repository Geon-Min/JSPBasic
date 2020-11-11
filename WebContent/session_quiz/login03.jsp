<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
   //로그인이 안된 사용자
   if(session.getAttribute("login") == null){
	   response.sendRedirect("login01.jsp");
   }
 	
 	User user = (User)session.getAttribute("login");
 
 %>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%=user.getId() %>(<%=user.getName() %>)님 환영합니다.</h2>
	
	<a href = "logout.jsp">로그아웃</a>
	<a href = "delete.jsp">회원탈퇴</a>

</body>
</html>