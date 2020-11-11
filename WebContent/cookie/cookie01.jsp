<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! String name;
    %> 	
    
    <%
        /*
    	show쿠키가 있다던면 쿠키가 가지고 있는 날짜를 
    	화면에 출력. 만약에 쿠키가 없으면 "쿠키가 없네용  ~" 츨력
    	*/
    	
    	Cookie[] arr = request.getCookies();
    	
    	if(arr != null){
    		for(Cookie c : arr){
    			if(c.getName().equals("show")){
    				name = c.getValue();
    			}
    		}
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%if(name == null) {%>
		쿠키가 없네요~
	<%} else {%>
		<%=name %>
	<%} %>
</body>
</html>