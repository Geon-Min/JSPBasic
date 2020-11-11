<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 
 	/*
 	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
 	
 	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
 	
 	평균이 60이하이면 score_quiz04으로 이동해서 "~님은 불합격입니다."
 	
 	조건 : 세션 x
 	
 	*/
	String name = (String)request.getAttribute("name");
	String avg = (String)request.getAttribute("avg");
 
 
 %>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=name %> 평균 점수 : <%=avg %>  
 	
</body>
</html>