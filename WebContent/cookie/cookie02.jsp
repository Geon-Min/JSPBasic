
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%  
    /*
    1.Date클레스를 이용해서 xxxx년 xx월 xx일
        쿠키이름은 show쿠키        
    */
    
    
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
    
    String now = sdf.format(date);
    
    Cookie cookie = new Cookie("show",now);
    
    cookie.setMaxAge(20);
    response.addCookie(cookie);
    
    
   	
    
    
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href = "cookie01.jsp">cookie01</a>

</body>
</html>