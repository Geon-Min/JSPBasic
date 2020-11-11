<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	//올바른 인증값을 적은 경우는 reverse.jsp로 이동
	
	//올바른 인증값을 적은 경우는 authYN이름으로 인증성공 세션을 생성.
	//올바르지 않은 경우는 다시 인증 페이지로 이동

	request.setCharacterEncoding("utf-8");

	String code = request.getParameter("code");
	
	String auth_code = (String)session.getAttribute("auth");
	
	if(auth_code.equals(code)){
		session.setAttribute("authYN", "y");
		response.sendRedirect("reserve.jsp");
	}else
		response.sendRedirect("auth.jsp");

	


%>    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>