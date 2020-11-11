<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는 list를 생성
	2. 1 ~ 45 까지 랜덤한 번호를 생성하고 리스트에 저장
	3. 중복되지 않는 숫자로 6개의 번호를 저장하면 됩니다.
	4. 화면에 출력.
	5. set을 이용해서도 처리
	*/


%>    
    
<% ArrayList<Integer> list = new ArrayList<>(); 
 Random rand = new Random(); 


 while(list.size() < 6){ 
    
 int num = rand.nextInt(45) + 1; 
 
 if(!list.contains(num) ) {
     list.add(num); 	
   
   } 
 } %>
 
<%
 
HashSet<Integer> set = new HashSet<>();
  while(set.size() < 6){
	  int num = rand.nextInt(45) + 1;
	  set.add(num);
  }
%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%="<h3>List을 이용</h3>" %>
<%= list %>

<%="<h3>SET을 이용</h3>" %>
<%= set %>


</body>
</html>