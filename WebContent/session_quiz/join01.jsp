<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원 가입 양식</h2>
	
	<form action = "join02.jsp" method = "post">
	
		아이디: <input type="text" name = "id" required="required"><br>
		비밀번호: <input type="text" name = "pw" required="required"><br>
		이름: <input type ="text" name = "name"><br>
		생일: <input type ="date" name = "birth"><br>
		
		<input type="submit" value="가입">
	
	</form>
	

</body>
</html>