<%@page import="javax.websocket.SendResult"%>
<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인 처리 영역
	
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//아이디가 있다면 uset객체가 반환, 없다면 null이 반환
	User user = UserRepository.getUser(id);
	
	if(user != null){ //아이디가 있는 경우
		if(user.getPw().equals(pw)){ //비밀번호가 일치하는 경우
			session.setAttribute("login", user);
			response.sendRedirect("login03.jsp");
		}else{ //비밀번호가 일치 하지 않는 경우
%>			<script>
				alert("비밀번호를 확인하세요");
				location.href = "login01.jsp"
			</script>
<%			
		}
	} else{//아이디가 없는 경우
%>
			<script>
				alert("아이디가 없습니다.");
				location.href = "login01.jsp"
			</script>

<%		
	}

%>