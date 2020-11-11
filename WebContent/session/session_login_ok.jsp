<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	1.아이디, 비밀번호, nick을 받습니다.
    	2.아이디와 비밀번호가 동일하면 아이디 정보, 이름정보를 저장하는 세션을 생성.
    	session_welcome 페이지로 이동해서 id(이름)님 환영합니다.
    	3. 틀린경루는 로그인 페이지로

    	*/
    	
    	request.setCharacterEncoding("utf-8");
    	
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = request.getParameter("nick");
    	
    	if(id.equals(pw)){
    		session.setAttribute("id", id);
    		session.setAttribute("nick", nick);
    		
    		response.sendRedirect("session_welcome.jsp");
    	}else{ 		
%> 
   		<script>
   			//경고창
   			alert("하고 싶은말이 없습니다.");
   			location.href = "session_login.jsp"; //redirect와 같은 기능
   		</script>
<%     		
		//response.sendRedirect("session_login.jsp");
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