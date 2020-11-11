<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
 <% 
 	/*
 	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
 	
 	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
 	
 	평균이 60이하이면 score_quiz04으로 이동해서 "~님은 불합격입니다."
 	
 	조건 : 세션 x
 	
 	*/
 
 	request.setCharacterEncoding("utf-8");
 
 	String name = request.getParameter("name");
 	int kor = Integer.parseInt(request.getParameter("kor"));
 	int eng = Integer.parseInt(request.getParameter("eng"));
 	int math = Integer.parseInt(request.getParameter("math"));
 	
 	int sum = kor + eng + math;
 	double avg = sum / 3.0;
	
 	String avg2 = String.format("%.2f", avg);
 	
 	request.setAttribute("avg", avg2);
 	request.setAttribute("name", name);
 	if(avg >= 60) {
 		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
 	     //<jsp:forward page = "score_quiz03.jsp"/>
 	} else {
 		request.getRequestDispatcher("score_quiz04.jsp").forward(request,response);
         //<%-- <jsp:forward page = "score_quiz04.jsp"/> --
    
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