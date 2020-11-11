<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%     
/*
	[튜브] 님이 입장
	현재 같은 카카오 프렌즈는 3명입니다.
	
	현재 같은 카카오 프렌즈는 3명입니다.

	한명 씩 추가, 10명이면 초기화


*/  

%>

<%!
 	String[] name = {"무지", "튜브", "프로도","제이지","라이언","어피치"};
	ArrayList<String> list = new ArrayList<>();
	Random rand = new Random();
%>

<% 
	int num = rand.nextInt(6);
	String str = name[num];
    list.add(str);
    
	int count = -1;
    for(String s: list )
	    if(s.equals(str)){
	    	count++;
	    }
    
   if(list.size() == 10)
	   list.clear();


%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	[<%=str %>] 님이 입장 
	<br/>
	
	현재 같은 카카오 프렌즈는 <%= count %> 명 입니다.
	
	<br/>
	
	<h2>현재 구성</h2>
	<%=list %> (<%=list.size() %>명)
	
	
	
	
	
	

</body>
</html>