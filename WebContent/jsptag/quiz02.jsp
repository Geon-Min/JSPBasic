<%@page import="java.util.Random"%>
<%@page import="java.util.RandomAccess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
       /*
       
        10번 방문자 입니다. 당첨
       
       	랜덤 구구단 4단
       	이번에 나온 구구단 4단 입니다.
       	
       */

    %>
    
    <%!int i = 0;
	  Random rand = new Random(); %>
    
    <%i++;%>
  
	<%
	  int num = rand.nextInt(9) + 1; 
	
	%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<%= i + "번째 방문자 입니다"  %>
		<%if(i % 10 == 0) {%>
			당첨됬습니다.
		<% } %>
	</p>
	<hr/>
	
	<h2><%="랜덤 구구단" + num + "단" %></h2>
	
	<p>
		<%="이번에 나온 구구단은" + num + "단 입니다." %><br/>
		<%for(int i = 1; i<=9; i++) {%>
			<%= num %> x <%= i%> = <%= num * i %><br/>
		<%} %>
	</p>
	
</body>
</html>