<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동  -->
	<h2>req_video 경로</h2>
	
	<a href = "../request/req_video.jsp">req_video(상대경로)</a>
	<a href = "/JSPBasic/request/req_video.jsp">req_video(절대경로)</a>
	
	
	<!-- img태그를 사용해서 java.png참조 -->
	<br>
	<img src = "../request/img/java.png" width = "100px" height="100px" alt = "자바"><br>
	
	
	<!--a태그를 이용해서 TestServlet으로 상대경로, 절대경로  -->
	<!--Mapping 경로 확인 (어노테이션), 경로 확인을 위해 실행 -->
	<a href = "../banana">TestServlet(상대경로)</a>
	<a href = "/JSPBasic/banana">TestServlet(절대경로)</a>

</body>
</html>