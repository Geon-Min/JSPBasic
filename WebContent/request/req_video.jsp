<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <iframe src ="req_basic.jsp"></iframe> -->
	
	<div align="center">
		<table border="1">
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일자</th>
			</tr>
			
			<tr>
				<td>
					<a href = "req_video_ok.jsp?subject=java">
						<img src = "img/java.png" width = "100px" height="100px">
					</a>
				</td>
				<td>자바</td>
				<td>
					<a href="#">자바의 기본내용을 학습</a>
				</td>
				<td>2020.01.02</td>
			
			</tr>
			<tr>
				<td>
					<a href = "req_video_ok.jsp?subject=javascript">
						<img src = "img/javascript.png" width = "100px" height="100px">
					</a>
				</td>
				
				<td>자바스크립트</td>
				<td>
					<a href="req_video_ok.jsp">자바스클립트 Basic</a>
				</td>
				<td>2020.02.12</td>
			
			</tr>
			<tr>
				<td><a href = "req_video_ok.jsp?subject=oracle"><img src = "img/oracle.png" width = "100px" height="100px"></a></td>
				<td>오라클</td>
				<td><a href="#">오라클 문법 학습</a></td>
				<td>2020.03.14</td>
			
			</tr>
			
		</table>
	</div>
</body>
</html>