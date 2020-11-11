<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String subject = request.getParameter("subject");
		
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--앞에서 어떤 동영상 클릭하냐에 따라
	각각 알맞은 동영상이 보여지도록 처리  -->
	
	<div align = "center">
		<h2>강의영상</h2>
		<hr/>
		
		<%if(subject == null) {%>
		<p>잘못된 접급입니다.</p>
		
		<% } else if(subject.equals("java")) {%>
		
		<p>자바 수업 소개</p>
	    <iframe width="560" height="315" src="https://www.youtube.com/embed/L0a6N-rj-CI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen name="subject"></iframe>
	    <%} %>
	    
	    <%if(subject.equals("javascript")){ %>
	    <p>자바스크립트 수업 소개</p>
	    <iframe width="1280" height="720" src="https://www.youtube.com/embed/nOTpuof2YG8?list=PLK7AWkPYwus6SdPJyhK9SNnKJybIC5qCs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen name="subject"></iframe>
	    <%} %>
	    
	    <%if(subject.equals("oracle")){ %>
	    <p>오라클 설치과정</p>
	    <iframe width="1280" height="720" src="https://www.youtube.com/embed/DEVR_R2Hva0?list=PLK7AWkPYwus5eaHdYaraU73uMDRX18STn" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen name="subject"></iframe>
	    <%} %>
	</div>
	
</body>
</html>