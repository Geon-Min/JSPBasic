<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%  //순수 자바 코드
    	request.setCharacterEncoding("UTF-8"); //한글 처리
    	
    	String name = request.getParameter("name");
    	String age = request.getParameter("age");
    
    	//age에 다른 결과 페이지를 보여주고 싶다면?
    	int a = Integer.parseInt(age);
    	
    	if(a >= 20){
    		response.sendRedirect("res_ex01_ok.jsp"); //URL 주소
    		
    	}else{
    		response.sendRedirect("res_ex01_no.jsp");
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