<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. id, pw 받아서 처리
	2. id가 abc1234, 비밀번호가 xxx123라면 로그인 성공이라고 간주 
		res_ex02_welcome.jsp로 리다이렉트
	3. id가 틀린경우, res_ex02_id_fail로 리다이렉트.
	4. pw가 틀린경우, res_ex02_pw_fail로 리다이렉트. 각각 결과 구문들을 출력
	*/
	
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc1234")){
		if(pw.equals("xxx123")){
			response.sendRedirect("res_ex02_welcome.jsp");
		}else{
			response.sendRedirect("res_ex02_pw_fail.jsp");
		}
	}else{
		response.sendRedirect("res_ex02_id_fail.jsp");
	}
	

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