<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%!
    	int sum = 0;
        double avg = 0.0;
        String str;
    %>
    
    <%
    	request.setCharacterEncoding("UTF-8"); //POST형식에서 한글처리
    
    	String name = request.getParameter("name");
    	int kor = Integer.parseInt(request.getParameter("kor"));
    	int eng = Integer.parseInt(request.getParameter("eng"));
    	int math = Integer.parseInt(request.getParameter("math"));
     	
    	sum = kor + eng + math;
    	avg = sum / 3.0;
    	
    	
    	String result = String.format("%.2f",avg); // 스트링 포맷형식 변경
    	
    	if(avg >= 80){
    		str = "고득점";
    	}else if(avg >= 60){
    		str = "중간";
    	}else
    		str = "저득점";
    	
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=name %> <br>
	영어 점수 : <%=eng %>점<br>
	국어 점수 : <%=kor %>점<br>
	수학 점수 : <%=math %>점<br>
	합계 : <%=sum %>점<br>
	평균 : <%=result %>점<br>
	기타내용 : <%=str %><br>


</body>
</html>