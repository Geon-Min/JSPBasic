<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int a = 1;
	
	if(a >= 10){
		out.println("10보다 크다"); /*out 이라는 내장객체를 통해서   */
	} else{
		out.println("10보다 크다");
	}
	
	%>
	
	<hr/>
	<%
		for(int i = 0; i <= 10; i++){
			out.println(i + "<br>"); // <br>은 브라우저에서 태그로 인식
		}
	
	%>
	
	<hr/>
	
	<%
	    int num = 0;
	    if(num >= 10){
	    	out.println("<p> 참 입니다.</p>");
	    }else{
	    	out.println("<p> 거짓 입니다.</p>");
	    }
	
	%>
	
	<% if(num >= 10) {%>
		<p>참 입니다.</p>
	<% } else { %>
		<p>거짓 입니다.</p>
	<% } %>
	
	
	<hr/>
	<!--구구단 3단  -->
	<% 
	int dan = 3;
	
    for(int i = 1 ; i<= 9 ;i++){
    	out.println( dan + " x " + i + "=" + dan * i + "<hr/>");
    }

	%>
	
	<hr/>
	<ol>
	<%for(int i= 1; i<=20; i++){%>
		
		 <li><input type="checkbox"></li>
		
    <%}%>
    </ol> 
	
	
	
	

</body>
</html>