<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//from으로 전송된 데이터를 받을 
    	//POST방식은 request 객체에서 값을 얻을때 인코딩형식을 지정합니다.
    	request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	
  
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>req_post_form에서 넘어온 파라미터 값</h2>
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>



</body>
</html>